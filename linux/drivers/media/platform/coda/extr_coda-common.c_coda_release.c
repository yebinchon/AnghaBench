
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct file {int private_data; } ;
struct coda_dev {int ida; int dev; int clk_per; int clk_ahb; int workqueue; } ;
struct TYPE_9__ {int m2m_ctx; } ;
struct coda_ctx {scalar_t__ inst_type; int debugfs_entry; TYPE_3__* ops; int idx; TYPE_4__ fh; int ctrls; int workbuf; TYPE_2__* dev; int seq_end_work; scalar_t__ vdoa; scalar_t__ use_bit; } ;
struct TYPE_8__ {int (* release ) (struct coda_ctx*) ;scalar_t__ seq_end_work; } ;
struct TYPE_7__ {TYPE_1__* devtype; } ;
struct TYPE_6__ {scalar_t__ product; } ;


 scalar_t__ CODA_DX6 ;
 scalar_t__ CODA_INST_DECODER ;
 int clk_disable_unprepare (int ) ;
 int coda_bit_stream_end_flag (struct coda_ctx*) ;
 int coda_dbg (int,struct coda_ctx*,char*,struct coda_ctx*) ;
 int coda_free_aux_buf (struct coda_dev*,int *) ;
 int debugfs_remove_recursive (int ) ;
 struct coda_ctx* fh_to_ctx (int ) ;
 int flush_work (int *) ;
 int ida_free (int *,int ) ;
 int kfree (struct coda_ctx*) ;
 int pm_runtime_put_sync (int ) ;
 int queue_work (int ,int *) ;
 int stub1 (struct coda_ctx*) ;
 int v4l2_ctrl_handler_free (int *) ;
 int v4l2_fh_del (TYPE_4__*) ;
 int v4l2_fh_exit (TYPE_4__*) ;
 int v4l2_m2m_ctx_release (int ) ;
 int vdoa_context_destroy (scalar_t__) ;
 struct coda_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int coda_release(struct file *file)
{
 struct coda_dev *dev = video_drvdata(file);
 struct coda_ctx *ctx = fh_to_ctx(file->private_data);

 coda_dbg(1, ctx, "release instance (%p)\n", ctx);

 if (ctx->inst_type == CODA_INST_DECODER && ctx->use_bit)
  coda_bit_stream_end_flag(ctx);


 v4l2_m2m_ctx_release(ctx->fh.m2m_ctx);

 if (ctx->vdoa)
  vdoa_context_destroy(ctx->vdoa);


 if (ctx->ops->seq_end_work) {
  queue_work(dev->workqueue, &ctx->seq_end_work);
  flush_work(&ctx->seq_end_work);
 }

 if (ctx->dev->devtype->product == CODA_DX6)
  coda_free_aux_buf(dev, &ctx->workbuf);

 v4l2_ctrl_handler_free(&ctx->ctrls);
 clk_disable_unprepare(dev->clk_ahb);
 clk_disable_unprepare(dev->clk_per);
 pm_runtime_put_sync(dev->dev);
 v4l2_fh_del(&ctx->fh);
 v4l2_fh_exit(&ctx->fh);
 ida_free(&dev->ida, ctx->idx);
 if (ctx->ops->release)
  ctx->ops->release(ctx);
 debugfs_remove_recursive(ctx->debugfs_entry);
 kfree(ctx);

 return 0;
}
