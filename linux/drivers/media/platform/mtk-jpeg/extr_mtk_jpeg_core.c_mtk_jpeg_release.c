
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mtk_jpeg_dev {int lock; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct mtk_jpeg_ctx {TYPE_1__ fh; } ;
struct file {int private_data; } ;


 int kfree (struct mtk_jpeg_ctx*) ;
 struct mtk_jpeg_ctx* mtk_jpeg_fh_to_ctx (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct mtk_jpeg_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int mtk_jpeg_release(struct file *file)
{
 struct mtk_jpeg_dev *jpeg = video_drvdata(file);
 struct mtk_jpeg_ctx *ctx = mtk_jpeg_fh_to_ctx(file->private_data);

 mutex_lock(&jpeg->lock);
 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);
 mutex_unlock(&jpeg->lock);
 return 0;
}
