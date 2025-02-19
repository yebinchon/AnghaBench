
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vb2_v4l2_buffer {int dummy; } ;
struct vb2_queue {scalar_t__ type; } ;
struct hva_enc {int (* close ) (struct hva_ctx*) ;int name; } ;
struct hva_dev {int nb_of_instances; int ** instances; } ;
struct TYPE_8__ {TYPE_4__* m2m_ctx; } ;
struct hva_ctx {size_t id; int aborting; struct hva_enc* enc; int name; TYPE_3__ fh; scalar_t__ stream_num; scalar_t__ frame_num; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int q; } ;
struct TYPE_6__ {int q; } ;
struct TYPE_9__ {TYPE_2__ cap_q_ctx; TYPE_1__ out_q_ctx; } ;


 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (scalar_t__) ;
 int VB2_BUF_STATE_ERROR ;
 struct device* ctx_to_dev (struct hva_ctx*) ;
 struct hva_dev* ctx_to_hdev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ,int ,...) ;
 int stub1 (struct hva_ctx*) ;
 int to_type_str (scalar_t__) ;
 int v4l2_m2m_buf_done (struct vb2_v4l2_buffer*,int ) ;
 struct vb2_v4l2_buffer* v4l2_m2m_dst_buf_remove (TYPE_4__*) ;
 struct vb2_v4l2_buffer* v4l2_m2m_src_buf_remove (TYPE_4__*) ;
 struct hva_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 scalar_t__ vb2_is_streaming (int *) ;

__attribute__((used)) static void hva_stop_streaming(struct vb2_queue *vq)
{
 struct hva_ctx *ctx = vb2_get_drv_priv(vq);
 struct hva_dev *hva = ctx_to_hdev(ctx);
 struct device *dev = ctx_to_dev(ctx);
 const struct hva_enc *enc = ctx->enc;
 struct vb2_v4l2_buffer *vbuf;

 dev_dbg(dev, "%s %s stop streaming\n", ctx->name,
  to_type_str(vq->type));

 if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT) {

  ctx->frame_num = 0;
  while ((vbuf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx)))
   v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
 } else {

  ctx->stream_num = 0;
  while ((vbuf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx)))
   v4l2_m2m_buf_done(vbuf, VB2_BUF_STATE_ERROR);
 }

 if ((V4L2_TYPE_IS_OUTPUT(vq->type) &&
      vb2_is_streaming(&ctx->fh.m2m_ctx->cap_q_ctx.q)) ||
     (!V4L2_TYPE_IS_OUTPUT(vq->type) &&
      vb2_is_streaming(&ctx->fh.m2m_ctx->out_q_ctx.q))) {
  dev_dbg(dev, "%s %s out=%d cap=%d\n",
   ctx->name, to_type_str(vq->type),
   vb2_is_streaming(&ctx->fh.m2m_ctx->out_q_ctx.q),
   vb2_is_streaming(&ctx->fh.m2m_ctx->cap_q_ctx.q));
  return;
 }


 if (enc) {
  dev_dbg(dev, "%s %s encoder closed\n", ctx->name, enc->name);
  enc->close(ctx);
  ctx->enc = ((void*)0);


  hva->instances[ctx->id] = ((void*)0);
  hva->nb_of_instances--;
 }

 ctx->aborting = 0;
}
