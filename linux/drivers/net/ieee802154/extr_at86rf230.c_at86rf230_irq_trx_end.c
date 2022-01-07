
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_state_change {struct at86rf230_local* lp; } ;
struct at86rf230_local {scalar_t__ is_tx; } ;


 int RG_TRX_STATE ;
 int at86rf230_async_read_reg (struct at86rf230_local*,int ,struct at86rf230_state_change*,int ) ;
 int at86rf230_rx_trac_check ;
 int at86rf230_tx_trac_check ;

__attribute__((used)) static void
at86rf230_irq_trx_end(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;

 if (lp->is_tx) {
  lp->is_tx = 0;
  at86rf230_async_read_reg(lp, RG_TRX_STATE, ctx,
      at86rf230_tx_trac_check);
 } else {
  at86rf230_async_read_reg(lp, RG_TRX_STATE, ctx,
      at86rf230_rx_trac_check);
 }
}
