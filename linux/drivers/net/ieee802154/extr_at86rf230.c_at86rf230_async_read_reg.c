
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {void (* complete ) (void*) ;} ;
struct at86rf230_state_change {int* buf; TYPE_1__ msg; } ;
struct at86rf230_local {int spi; } ;


 int CMD_REG ;
 int CMD_REG_MASK ;
 int at86rf230_async_error (struct at86rf230_local*,struct at86rf230_state_change*,int) ;
 int spi_async (int ,TYPE_1__*) ;

__attribute__((used)) static void
at86rf230_async_read_reg(struct at86rf230_local *lp, u8 reg,
    struct at86rf230_state_change *ctx,
    void (*complete)(void *context))
{
 int rc;

 u8 *tx_buf = ctx->buf;

 tx_buf[0] = (reg & CMD_REG_MASK) | CMD_REG;
 ctx->msg.complete = complete;
 rc = spi_async(lp->spi, &ctx->msg);
 if (rc)
  at86rf230_async_error(lp, ctx, rc);
}
