
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vb2_queue {scalar_t__ type; } ;
struct TYPE_2__ {unsigned int size; } ;
struct hva_ctx {unsigned int max_stream_size; TYPE_1__ frameinfo; int name; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_OUTPUT ;
 struct device* ctx_to_dev (struct hva_ctx*) ;
 int dev_dbg (struct device*,char*,int ,int ,unsigned int) ;
 int to_type_str (scalar_t__) ;
 struct hva_ctx* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int hva_queue_setup(struct vb2_queue *vq,
      unsigned int *num_buffers, unsigned int *num_planes,
      unsigned int sizes[], struct device *alloc_devs[])
{
 struct hva_ctx *ctx = vb2_get_drv_priv(vq);
 struct device *dev = ctx_to_dev(ctx);
 unsigned int size;

 dev_dbg(dev, "%s %s queue setup: num_buffers %d\n", ctx->name,
  to_type_str(vq->type), *num_buffers);

 size = vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT ?
  ctx->frameinfo.size : ctx->max_stream_size;

 if (*num_planes)
  return sizes[0] < size ? -EINVAL : 0;


 *num_planes = 1;
 sizes[0] = size;

 return 0;
}
