
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vpe_dev {int dev_mutex; int num_instances; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct vpe_ctx {TYPE_1__ fh; int hdl; int sc_coeff_h; int sc_coeff_v; int mmr_adb; int desc_list; } ;
struct file {int dummy; } ;


 scalar_t__ atomic_dec_return (int *) ;
 struct vpe_ctx* file2ctx (struct file*) ;
 int free_mv_buffers (struct vpe_ctx*) ;
 int kfree (struct vpe_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct vpe_dev* video_drvdata (struct file*) ;
 int vpdma_free_desc_buf (int *) ;
 int vpdma_free_desc_list (int *) ;
 int vpe_dbg (struct vpe_dev*,char*,...) ;

__attribute__((used)) static int vpe_release(struct file *file)
{
 struct vpe_dev *dev = video_drvdata(file);
 struct vpe_ctx *ctx = file2ctx(file);

 vpe_dbg(dev, "releasing instance %p\n", ctx);

 mutex_lock(&dev->dev_mutex);
 free_mv_buffers(ctx);
 vpdma_free_desc_list(&ctx->desc_list);
 vpdma_free_desc_buf(&ctx->mmr_adb);

 vpdma_free_desc_buf(&ctx->sc_coeff_v);
 vpdma_free_desc_buf(&ctx->sc_coeff_h);

 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 v4l2_ctrl_handler_free(&ctx->hdl);
 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);

 kfree(ctx);






 if (atomic_dec_return(&dev->num_instances) == 0)
  vpe_dbg(dev, "last instance released\n");

 mutex_unlock(&dev->dev_mutex);

 return 0;
}
