
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct file {int private_data; } ;
struct delta_dev {int lock; int dev; scalar_t__ clk_flash_promip; scalar_t__ clk_st231; } ;
struct delta_dec {int dummy; } ;
struct TYPE_3__ {int m2m_ctx; } ;
struct delta_ctx {int name; TYPE_1__ fh; struct delta_dec* dec; struct delta_dev* dev; } ;


 int call_dec_op (struct delta_dec const*,int ,struct delta_ctx*) ;
 int clk_disable_unprepare (scalar_t__) ;
 int close ;
 int delta_trace_summary (struct delta_ctx*) ;
 int dev_dbg (int ,char*,int ) ;
 int kfree (struct delta_ctx*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct delta_ctx* to_ctx (int ) ;
 int v4l2_fh_del (TYPE_1__*) ;
 int v4l2_fh_exit (TYPE_1__*) ;
 int v4l2_m2m_ctx_release (int ) ;

__attribute__((used)) static int delta_release(struct file *file)
{
 struct delta_ctx *ctx = to_ctx(file->private_data);
 struct delta_dev *delta = ctx->dev;
 const struct delta_dec *dec = ctx->dec;

 mutex_lock(&delta->lock);


 call_dec_op(dec, close, ctx);





 delta_trace_summary(ctx);

 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);

 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);


 if (delta->clk_st231)
  clk_disable_unprepare(delta->clk_st231);


 if (delta->clk_flash_promip)
  clk_disable_unprepare(delta->clk_flash_promip);

 dev_dbg(delta->dev, "%s decoder instance released\n", ctx->name);

 kfree(ctx);

 mutex_unlock(&delta->lock);
 return 0;
}
