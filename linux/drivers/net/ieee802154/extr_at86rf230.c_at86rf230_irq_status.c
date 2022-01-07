
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct at86rf230_state_change {int* buf; struct at86rf230_local* lp; } ;
struct at86rf230_local {TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; int irq; } ;


 int IRQ_TRX_END ;
 int at86rf230_irq_trx_end (struct at86rf230_state_change*) ;
 int dev_err (int *,char*,int) ;
 int enable_irq (int ) ;
 int kfree (struct at86rf230_state_change*) ;

__attribute__((used)) static void
at86rf230_irq_status(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;
 const u8 *buf = ctx->buf;
 u8 irq = buf[1];

 enable_irq(lp->spi->irq);

 if (irq & IRQ_TRX_END) {
  at86rf230_irq_trx_end(ctx);
 } else {
  dev_err(&lp->spi->dev, "not supported irq %02x received\n",
   irq);
  kfree(ctx);
 }
}
