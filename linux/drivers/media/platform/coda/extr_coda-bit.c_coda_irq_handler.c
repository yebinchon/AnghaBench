
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coda_dev {int v4l2_dev; int m2m_dev; } ;
struct coda_ctx {int completion; int dev; scalar_t__ aborting; } ;
typedef int irqreturn_t ;


 int CODA_REG_BIT_INT_CLEAR ;
 int CODA_REG_BIT_INT_CLEAR_SET ;
 int CODA_REG_BIT_INT_REASON ;
 int CODA_REG_BIT_INT_STATUS ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int coda_dbg (int,struct coda_ctx*,char*) ;
 scalar_t__ coda_isbusy (int ) ;
 int coda_read (struct coda_dev*,int ) ;
 int coda_write (struct coda_dev*,int ,int ) ;
 int complete (int *) ;
 int trace_coda_bit_done (struct coda_ctx*) ;
 int v4l2_err (int *,char*) ;
 struct coda_ctx* v4l2_m2m_get_curr_priv (int ) ;

irqreturn_t coda_irq_handler(int irq, void *data)
{
 struct coda_dev *dev = data;
 struct coda_ctx *ctx;


 coda_read(dev, CODA_REG_BIT_INT_STATUS);
 coda_write(dev, 0, CODA_REG_BIT_INT_REASON);
 coda_write(dev, CODA_REG_BIT_INT_CLEAR_SET,
        CODA_REG_BIT_INT_CLEAR);

 ctx = v4l2_m2m_get_curr_priv(dev->m2m_dev);
 if (ctx == ((void*)0)) {
  v4l2_err(&dev->v4l2_dev,
    "Instance released before the end of transaction\n");
  return IRQ_HANDLED;
 }

 trace_coda_bit_done(ctx);

 if (ctx->aborting) {
  coda_dbg(1, ctx, "task has been aborted\n");
 }

 if (coda_isbusy(ctx->dev)) {
  coda_dbg(1, ctx, "coda is still busy!!!!\n");
  return IRQ_NONE;
 }

 complete(&ctx->completion);

 return IRQ_HANDLED;
}
