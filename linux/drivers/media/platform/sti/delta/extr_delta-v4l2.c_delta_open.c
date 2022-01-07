
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct file {TYPE_1__* private_data; } ;
struct delta_dev {int instance_id; int lock; int dev; scalar_t__ clk_flash_promip; scalar_t__ clk_st231; int m2m_dev; } ;
struct TYPE_5__ {int m2m_ctx; } ;
struct delta_ctx {TYPE_1__ fh; int name; int dts; int state; int lock; int run_work; struct delta_dev* dev; } ;


 int DELTA_PREFIX ;
 int DELTA_STATE_WF_FORMAT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 scalar_t__ clk_prepare_enable (scalar_t__) ;
 int delta_run_work ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int ,int) ;
 int dev_warn (int ,char*) ;
 int kfree (struct delta_ctx*) ;
 struct delta_ctx* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int queue_init ;
 int set_default_params (struct delta_ctx*) ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_fh_add (TYPE_1__*) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_fh_init (TYPE_1__*,int ) ;
 int v4l2_m2m_ctx_init (int ,struct delta_ctx*,int ) ;
 int video_devdata (struct file*) ;
 struct delta_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int delta_open(struct file *file)
{
 struct delta_dev *delta = video_drvdata(file);
 struct delta_ctx *ctx = ((void*)0);
 int ret = 0;

 mutex_lock(&delta->lock);

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx) {
  ret = -ENOMEM;
  goto err;
 }
 ctx->dev = delta;

 v4l2_fh_init(&ctx->fh, video_devdata(file));
 file->private_data = &ctx->fh;
 v4l2_fh_add(&ctx->fh);

 INIT_WORK(&ctx->run_work, delta_run_work);
 mutex_init(&ctx->lock);

 ctx->fh.m2m_ctx = v4l2_m2m_ctx_init(delta->m2m_dev, ctx,
         queue_init);
 if (IS_ERR(ctx->fh.m2m_ctx)) {
  ret = PTR_ERR(ctx->fh.m2m_ctx);
  dev_err(delta->dev, "%s failed to initialize m2m context (%d)\n",
   DELTA_PREFIX, ret);
  goto err_fh_del;
 }





 ctx->state = DELTA_STATE_WF_FORMAT;

 INIT_LIST_HEAD(&ctx->dts);


 delta->instance_id++;
 snprintf(ctx->name, sizeof(ctx->name), "[%3d:----]",
   delta->instance_id);


 set_default_params(ctx);


 if (delta->clk_st231)
  if (clk_prepare_enable(delta->clk_st231))
   dev_warn(delta->dev, "failed to enable st231 clk\n");


 if (delta->clk_flash_promip)
  if (clk_prepare_enable(delta->clk_flash_promip))
   dev_warn(delta->dev, "failed to enable delta promip clk\n");

 mutex_unlock(&delta->lock);

 dev_dbg(delta->dev, "%s decoder instance created\n", ctx->name);

 return 0;

err_fh_del:
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 kfree(ctx);
err:
 mutex_unlock(&delta->lock);

 return ret;
}
