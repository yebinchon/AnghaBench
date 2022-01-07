
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct mtk_jpeg_dev {int lock; int m2m_dev; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct mtk_jpeg_ctx {TYPE_1__ fh; struct mtk_jpeg_dev* jpeg; } ;
struct file {TYPE_1__* private_data; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int kfree (struct mtk_jpeg_ctx*) ;
 struct mtk_jpeg_ctx* kzalloc (int,int ) ;
 int mtk_jpeg_queue_init ;
 int mtk_jpeg_set_default_params (struct mtk_jpeg_ctx*) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,struct video_device*) ;
 int v4l2_m2m_ctx_init (int ,struct mtk_jpeg_ctx*,int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct mtk_jpeg_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int mtk_jpeg_open(struct file *file)
{
 struct mtk_jpeg_dev *jpeg = video_drvdata(file);
 struct video_device *vfd = video_devdata(file);
 struct mtk_jpeg_ctx *ctx;
 int ret = 0;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 if (mutex_lock_interruptible(&jpeg->lock)) {
  ret = -ERESTARTSYS;
  goto free;
 }

 v4l2_fh_init(&ctx->fh, vfd);
 file->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);

 ctx->jpeg = jpeg;
 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(jpeg->m2m_dev, ctx,
         mtk_jpeg_queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  goto error;
 }

 mtk_jpeg_set_default_params(ctx);
 mutex_unlock(&jpeg->lock);
 return 0;

error:
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 mutex_unlock(&jpeg->lock);
free:
 kfree(ctx);
 return ret;
}
