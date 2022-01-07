
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct video_device {int dummy; } ;
struct mtk_mdp_dev {int lock; int ctx_num; TYPE_5__* pdev; int ctx_list; int vpu_dev; int m2m_dev; int id_counter; } ;
struct TYPE_6__ {int m2m_ctx; int * ctrl_handler; } ;
struct mtk_mdp_ctx {TYPE_1__ fh; int ctrl_handler; int m2m_ctx; scalar_t__ id; int list; int work; struct mtk_mdp_dev* mdp_dev; int slock; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_7__ {int dev; } ;


 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (int *,char*,...) ;
 int dev_name (int *) ;
 int kfree (struct mtk_mdp_ctx*) ;
 struct mtk_mdp_ctx* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mtk_mdp_ctrls_create (struct mtk_mdp_ctx*) ;
 int mtk_mdp_dbg (int ,char*,int ,scalar_t__) ;
 int mtk_mdp_m2m_queue_init ;
 int mtk_mdp_m2m_worker ;
 int mtk_mdp_set_default_params (struct mtk_mdp_ctx*) ;
 int mtk_mdp_vpu_register (TYPE_5__*) ;
 int mutex_init (int *) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,struct video_device*) ;
 int v4l2_m2m_ctx_init (int ,struct mtk_mdp_ctx*,int ) ;
 int v4l2_m2m_ctx_release (int ) ;
 struct video_device* video_devdata (struct file*) ;
 struct mtk_mdp_dev* video_drvdata (struct file*) ;
 int vpu_load_firmware (int ) ;

__attribute__((used)) static int mtk_mdp_m2m_open(struct file *file)
{
 struct mtk_mdp_dev *mdp = video_drvdata(file);
 struct video_device *vfd = video_devdata(file);
 struct mtk_mdp_ctx *ctx = ((void*)0);
 int ret;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 if (mutex_lock_interruptible(&mdp->lock)) {
  ret = -ERESTARTSYS;
  goto err_lock;
 }

 mutex_init(&ctx->slock);
 ctx->id = mdp->id_counter++;
 v4l2_fh_init(&ctx->fh, vfd);
 file->private_data = &ctx->fh;
 ret = mtk_mdp_ctrls_create(ctx);
 if (ret)
  goto error_ctrls;


 ctx->fh.ctrl_handler = &ctx->ctrl_handler;
 v4l2_fh_add(&ctx->fh);
 INIT_LIST_HEAD(&ctx->list);

 ctx->mdp_dev = mdp;
 mtk_mdp_set_default_params(ctx);

 INIT_WORK(&ctx->work, mtk_mdp_m2m_worker);
 ctx->m2m_ctx = v4l2_m2m_ctx_init(mdp->m2m_dev, ctx,
      mtk_mdp_m2m_queue_init);
 if (IS_ERR(ctx->m2m_ctx)) {
  dev_err(&mdp->pdev->dev, "Failed to initialize m2m context");
  ret = PTR_ERR(ctx->m2m_ctx);
  goto error_m2m_ctx;
 }
 ctx->fh.m2m_ctx = ctx->m2m_ctx;
 if (mdp->ctx_num++ == 0) {
  ret = vpu_load_firmware(mdp->vpu_dev);
  if (ret < 0) {
   dev_err(&mdp->pdev->dev,
    "vpu_load_firmware failed %d\n", ret);
   goto err_load_vpu;
  }

  ret = mtk_mdp_vpu_register(mdp->pdev);
  if (ret < 0) {
   dev_err(&mdp->pdev->dev,
    "mdp_vpu register failed %d\n", ret);
   goto err_load_vpu;
  }
 }

 list_add(&ctx->list, &mdp->ctx_list);
 mutex_unlock(&mdp->lock);

 mtk_mdp_dbg(0, "%s [%d]", dev_name(&mdp->pdev->dev), ctx->id);

 return 0;

err_load_vpu:
 mdp->ctx_num--;
 v4l2_m2m_ctx_release(ctx->m2m_ctx);
error_m2m_ctx:
 v4l2_ctrl_handler_free(&ctx->ctrl_handler);
error_ctrls:
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 mutex_unlock(&mdp->lock);
err_lock:
 kfree(ctx);

 return ret;
}
