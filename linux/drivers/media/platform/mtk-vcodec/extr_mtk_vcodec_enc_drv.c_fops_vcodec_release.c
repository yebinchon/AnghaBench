
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_dev {int dev_mutex; } ;
struct mtk_vcodec_ctx {int list; int m2m_ctx; int ctrl_hdl; int fh; int id; } ;
struct file {int private_data; } ;


 struct mtk_vcodec_ctx* fh_to_ctx (int ) ;
 int kfree (struct mtk_vcodec_ctx*) ;
 int list_del_init (int *) ;
 int mtk_v4l2_debug (int,char*,int ) ;
 int mtk_vcodec_enc_release (struct mtk_vcodec_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct mtk_vcodec_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fops_vcodec_release(struct file *file)
{
 struct mtk_vcodec_dev *dev = video_drvdata(file);
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(file->private_data);

 mtk_v4l2_debug(1, "[%d] encoder", ctx->id);
 mutex_lock(&dev->dev_mutex);

 mtk_vcodec_enc_release(ctx);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 v4l2_ctrl_handler_free(&ctx->ctrl_hdl);
 v4l2_m2m_ctx_release(ctx->m2m_ctx);

 list_del_init(&ctx->list);
 kfree(ctx);
 mutex_unlock(&dev->dev_mutex);
 return 0;
}
