
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {TYPE_1__* private_data; } ;
struct dma_interleaved_template {int dummy; } ;
struct deinterlace_dev {int m2m_dev; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct deinterlace_ctx {TYPE_1__ fh; int colorspace; void* xt; struct deinterlace_dev* dev; } ;
struct data_chunk {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int V4L2_COLORSPACE_REC709 ;
 int dprintk (struct deinterlace_dev*,char*,struct deinterlace_ctx*,int ) ;
 int kfree (struct deinterlace_ctx*) ;
 void* kzalloc (int,int ) ;
 int queue_init ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct deinterlace_ctx*,int *) ;
 int video_devdata (struct file*) ;
 struct deinterlace_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int deinterlace_open(struct file *file)
{
 struct deinterlace_dev *pcdev = video_drvdata(file);
 struct deinterlace_ctx *ctx = ((void*)0);

 ctx = kzalloc(sizeof *ctx, GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;
 ctx->dev = pcdev;

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(pcdev->m2m_dev, ctx, &queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  int ret = PTR_ERR(ctx->fh.m2m_ctx);

  kfree(ctx);
  return ret;
 }

 ctx->xt = kzalloc(sizeof(struct dma_interleaved_template) +
    sizeof(struct data_chunk), GFP_KERNEL);
 if (!ctx->xt) {
  kfree(ctx);
  return -ENOMEM;
 }

 ctx->colorspace = V4L2_COLORSPACE_REC709;
 v4l2_fh_add(&ctx->fh);

 dprintk(pcdev, "Created instance %p, m2m_ctx: %p\n",
  ctx, ctx->fh.m2m_ctx);

 return 0;
}
