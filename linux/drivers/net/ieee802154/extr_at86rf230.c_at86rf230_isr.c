
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int complete; } ;
struct at86rf230_state_change {int free; int* buf; TYPE_1__ msg; } ;
struct at86rf230_local {int spi; } ;
typedef int irqreturn_t ;


 int CMD_REG ;
 int CMD_REG_MASK ;
 int GFP_ATOMIC ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int RG_IRQ_STATUS ;
 int at86rf230_async_error (struct at86rf230_local*,struct at86rf230_state_change*,int) ;
 int at86rf230_irq_status ;
 int at86rf230_setup_spi_messages (struct at86rf230_local*,struct at86rf230_state_change*) ;
 int disable_irq_nosync (int) ;
 int enable_irq (int) ;
 struct at86rf230_state_change* kzalloc (int,int ) ;
 int spi_async (int ,TYPE_1__*) ;

__attribute__((used)) static irqreturn_t at86rf230_isr(int irq, void *data)
{
 struct at86rf230_local *lp = data;
 struct at86rf230_state_change *ctx;
 int rc;

 disable_irq_nosync(irq);

 ctx = kzalloc(sizeof(*ctx), GFP_ATOMIC);
 if (!ctx) {
  enable_irq(irq);
  return IRQ_NONE;
 }

 at86rf230_setup_spi_messages(lp, ctx);

 ctx->free = 1;

 ctx->buf[0] = (RG_IRQ_STATUS & CMD_REG_MASK) | CMD_REG;
 ctx->msg.complete = at86rf230_irq_status;
 rc = spi_async(lp->spi, &ctx->msg);
 if (rc) {
  at86rf230_async_error(lp, ctx, rc);
  enable_irq(irq);
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
