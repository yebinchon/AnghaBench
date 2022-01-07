
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_vcodec_dev {int dev_mutex; int pm; } ;
struct mtk_vcodec_ctx {struct mtk_vcodec_ctx* empty_flush_buf; int list; int ctrl_hdl; int fh; int m2m_ctx; int id; } ;
struct file {int private_data; } ;


 struct mtk_vcodec_ctx* fh_to_ctx (int ) ;
 int kfree (struct mtk_vcodec_ctx*) ;
 int list_del_init (int *) ;
 int mtk_v4l2_debug (int ,char*,int ) ;
 int mtk_vcodec_dec_pw_off (int *) ;
 int mtk_vcodec_dec_release (struct mtk_vcodec_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (int *) ;
 int v4l2_fh_exit (int *) ;
 scalar_t__ v4l2_fh_is_singular (int *) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct mtk_vcodec_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int fops_vcodec_release(struct file *file)
{
 struct mtk_vcodec_dev *dev = video_drvdata(file);
 struct mtk_vcodec_ctx *ctx = fh_to_ctx(file->private_data);

 mtk_v4l2_debug(0, "[%d] decoder", ctx->id);
 mutex_lock(&dev->dev_mutex);







 v4l2_m2m_ctx_release(ctx->m2m_ctx);
 mtk_vcodec_dec_release(ctx);

 if (v4l2_fh_is_singular(&ctx->fh))
  mtk_vcodec_dec_pw_off(&dev->pm);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 v4l2_ctrl_handler_free(&ctx->ctrl_hdl);

 list_del_init(&ctx->list);
 kfree(ctx->empty_flush_buf);
 kfree(ctx);
 mutex_unlock(&dev->dev_mutex);
 return 0;
}
