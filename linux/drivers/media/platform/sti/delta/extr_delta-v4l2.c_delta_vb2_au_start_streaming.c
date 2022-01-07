
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int timestamp; } ;
struct vb2_v4l2_buffer {TYPE_2__ vb2_buf; } ;
struct vb2_queue {int dummy; } ;
struct delta_streaminfo {int dts; int size; int pixelformat; int streamformat; } ;
struct delta_frameinfo {int dts; int size; int pixelformat; int streamformat; } ;
struct delta_dev {int dev; } ;
typedef struct delta_dec const delta_dec ;
struct TYPE_3__ {int m2m_ctx; } ;
struct delta_ctx {scalar_t__ state; TYPE_1__ fh; int name; int flags; struct delta_dec const* dec; struct delta_streaminfo frameinfo; struct delta_streaminfo streaminfo; struct delta_dev* dev; } ;
struct delta_au {int dts; int size; int pixelformat; int streamformat; } ;
typedef int str2 ;
typedef int str1 ;


 int DELTA_FLAG_FRAMEINFO ;
 int DELTA_FLAG_STREAMINFO ;
 scalar_t__ DELTA_STATE_READY ;
 scalar_t__ DELTA_STATE_WF_FORMAT ;
 scalar_t__ DELTA_STATE_WF_STREAMINFO ;
 int EINVAL ;
 int VB2_BUF_STATE_QUEUED ;
 int call_dec_op (struct delta_dec const*,int ,struct delta_ctx*,struct delta_streaminfo*) ;
 int decode ;
 int delta_au_done (struct delta_ctx*,struct delta_streaminfo*,int) ;
 int delta_frameinfo_str (struct delta_streaminfo*,unsigned char*,int) ;
 int delta_open_decoder (struct delta_ctx*,int ,int ,struct delta_dec const**) ;
 int delta_push_dts (struct delta_ctx*,int ) ;
 int delta_streaminfo_str (struct delta_streaminfo*,unsigned char*,int) ;
 int dev_dbg (int ,char*,int ,int ,int ) ;
 int dev_dbg_ratelimited (int ,char*,int ) ;
 int dev_err (int ,char*,int ,...) ;
 int dump_au (struct delta_ctx*,struct delta_streaminfo*) ;
 int get_frameinfo ;
 int get_streaminfo ;
 struct delta_streaminfo* to_au (struct vb2_v4l2_buffer*) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (int ) ;
 struct delta_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 int vb2_get_plane_payload (TYPE_2__*,int ) ;

__attribute__((used)) static int delta_vb2_au_start_streaming(struct vb2_queue *q,
     unsigned int count)
{
 struct delta_ctx *ctx = vb2_get_drv_priv(q);
 struct delta_dev *delta = ctx->dev;
 const struct delta_dec *dec = ctx->dec;
 struct delta_au *au;
 int ret = 0;
 struct vb2_v4l2_buffer *vbuf = ((void*)0);
 struct delta_streaminfo *streaminfo = &ctx->streaminfo;
 struct delta_frameinfo *frameinfo = &ctx->frameinfo;
 unsigned char str1[100] = "";
 unsigned char str2[100] = "";

 if ((ctx->state != DELTA_STATE_WF_FORMAT) &&
     (ctx->state != DELTA_STATE_WF_STREAMINFO))
  return 0;

 if (ctx->state == DELTA_STATE_WF_FORMAT) {

  ret = delta_open_decoder(ctx,
      ctx->streaminfo.streamformat,
      ctx->frameinfo.pixelformat, &dec);
  if (ret)
   goto err;
  ctx->dec = dec;
  ctx->state = DELTA_STATE_WF_STREAMINFO;
 }






 vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
 if (!vbuf) {
  dev_err(delta->dev, "%s failed to start streaming, no stream header buffer enqueued\n",
   ctx->name);
  ret = -EINVAL;
  goto err;
 }
 au = to_au(vbuf);
 au->size = vb2_get_plane_payload(&vbuf->vb2_buf, 0);
 au->dts = vbuf->vb2_buf.timestamp;

 delta_push_dts(ctx, au->dts);


 dump_au(ctx, au);


 ret = call_dec_op(dec, decode, ctx, au);
 if (ret) {
  dev_err(delta->dev, "%s failed to start streaming, header decoding failed (%d)\n",
   ctx->name, ret);
  goto err;
 }

 ret = call_dec_op(dec, get_streaminfo, ctx, streaminfo);
 if (ret) {
  dev_dbg_ratelimited(delta->dev,
        "%s failed to start streaming, valid stream header not yet decoded\n",
        ctx->name);
  goto err;
 }
 ctx->flags |= DELTA_FLAG_STREAMINFO;

 ret = call_dec_op(dec, get_frameinfo, ctx, frameinfo);
 if (ret)
  goto err;
 ctx->flags |= DELTA_FLAG_FRAMEINFO;

 ctx->state = DELTA_STATE_READY;

 dev_dbg(delta->dev, "%s %s => %s\n", ctx->name,
  delta_streaminfo_str(streaminfo, str1, sizeof(str1)),
  delta_frameinfo_str(frameinfo, str2, sizeof(str2)));

 delta_au_done(ctx, au, ret);
 return 0;

err:




 if (vbuf)
  v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_QUEUED);

 while ((vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx)))
  v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_QUEUED);
 return ret;
}
