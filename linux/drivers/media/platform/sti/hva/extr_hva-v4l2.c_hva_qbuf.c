
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {scalar_t__ num_buffers; } ;
struct vb2_buffer {int dummy; } ;
struct v4l2_buffer {scalar_t__ index; int bytesused; int type; } ;
struct hva_stream {int bytesused; } ;
struct TYPE_2__ {int m2m_ctx; } ;
struct hva_ctx {TYPE_1__ fh; int name; } ;
struct file {int private_data; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 struct device* ctx_to_dev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ,scalar_t__,scalar_t__) ;
 struct hva_ctx* fh_to_ctx (int ) ;
 struct hva_stream* to_hva_stream (int ) ;
 int to_vb2_v4l2_buffer (struct vb2_buffer*) ;
 struct vb2_queue* v4l2_m2m_get_vq (int ,int ) ;
 int v4l2_m2m_qbuf (struct file*,int ,struct v4l2_buffer*) ;
 struct vb2_buffer* vb2_get_buffer (struct vb2_queue*,scalar_t__) ;

__attribute__((used)) static int hva_qbuf(struct file *file, void *priv, struct v4l2_buffer *buf)
{
 struct hva_ctx *ctx = fh_to_ctx(file->private_data);
 struct device *dev = ctx_to_dev(ctx);

 if (buf->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {







  struct vb2_queue *vq;
  struct hva_stream *stream;
  struct vb2_buffer *vb2_buf;

  vq = v4l2_m2m_get_vq(ctx->fh.m2m_ctx, buf->type);

  if (buf->index >= vq->num_buffers) {
   dev_dbg(dev, "%s buffer index %d out of range (%d)\n",
    ctx->name, buf->index, vq->num_buffers);
   return -EINVAL;
  }

  vb2_buf = vb2_get_buffer(vq, buf->index);
  stream = to_hva_stream(to_vb2_v4l2_buffer(vb2_buf));
  stream->bytesused = buf->bytesused;
 }

 return v4l2_m2m_qbuf(file, ctx->fh.m2m_ctx, buf);
}
