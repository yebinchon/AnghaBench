
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_state_change {struct at86rf230_local* lp; } ;
struct at86rf230_local {scalar_t__ is_tx_from_off; } ;


 int STATE_TX_ARET_ON ;
 int STATE_TX_ON ;
 int at86rf230_async_state_change (struct at86rf230_local*,struct at86rf230_state_change*,int ,int ) ;
 int at86rf230_write_frame ;
 int at86rf230_xmit_tx_on ;

__attribute__((used)) static void
at86rf230_xmit_start(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;


 if (lp->is_tx_from_off)
  at86rf230_async_state_change(lp, ctx, STATE_TX_ARET_ON,
          at86rf230_write_frame);
 else
  at86rf230_async_state_change(lp, ctx, STATE_TX_ON,
          at86rf230_xmit_tx_on);
}
