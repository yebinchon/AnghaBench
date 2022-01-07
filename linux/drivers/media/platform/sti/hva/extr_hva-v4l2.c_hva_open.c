
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct hva_dev {int instance_id; int lock; int m2m_dev; } ;
struct TYPE_5__ {int m2m_ctx; int * ctrl_handler; } ;
struct hva_ctx {TYPE_1__ fh; int ctrl_handler; int name; int sys_errors; int lock; int run_work; struct hva_dev* hva_dev; } ;
struct file {TYPE_1__* private_data; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HVA_PREFIX ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int dev_err (struct device*,char*,int ,...) ;
 int dev_info (struct device*,char*,int ) ;
 int hva_ctrls_setup (struct hva_ctx*) ;
 int hva_dbg_ctx_create (struct hva_ctx*) ;
 int hva_queue_init ;
 int hva_run_work ;
 struct device* hva_to_dev (struct hva_dev*) ;
 int kfree (struct hva_ctx*) ;
 struct hva_ctx* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_default_params (struct hva_ctx*) ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct hva_ctx*,int *) ;
 int video_devdata (struct file*) ;
 struct hva_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int hva_open(struct file *file)
{
 struct hva_dev *hva = video_drvdata(file);
 struct device *dev = hva_to_dev(hva);
 struct hva_ctx *ctx;
 int ret;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  ret = -ENOMEM;
  goto out;
 }
 ctx->hva_dev = hva;

 INIT_WORK(&ctx->run_work, hva_run_work);
 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);

 ret = hva_ctrls_setup(ctx);
 if (ret) {
  dev_err(dev, "%s [x:x] failed to setup controls\n",
   HVA_PREFIX);
  ctx->sys_errors++;
  goto err_fh;
 }
 ctx->fh.ctrl_handler = &ctx->ctrl_handler;

 mutex_init(&ctx->lock);

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(hva->m2m_dev, ctx,
         &hva_queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  dev_err(dev, "%s failed to initialize m2m context (%d)\n",
   HVA_PREFIX, ret);
  ctx->sys_errors++;
  goto err_ctrls;
 }


 mutex_lock(&hva->lock);
 hva->instance_id++;
 snprintf(ctx->name, sizeof(ctx->name), "[%3d:----]",
   hva->instance_id);
 mutex_unlock(&hva->lock);


 set_default_params(ctx);





 dev_info(dev, "%s encoder instance created\n", ctx->name);

 return 0;

err_ctrls:
 v4l2_ctrl_handler_free(&ctx->ctrl_handler);
err_fh:
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);
out:
 return ret;
}
