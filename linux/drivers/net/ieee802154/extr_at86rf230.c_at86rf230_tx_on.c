
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_state_change {struct at86rf230_local* lp; } ;
struct at86rf230_local {int dummy; } ;


 int STATE_RX_AACK_ON ;
 int at86rf230_async_state_change (struct at86rf230_local*,struct at86rf230_state_change*,int ,int ) ;
 int at86rf230_tx_complete ;

__attribute__((used)) static void
at86rf230_tx_on(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;

 at86rf230_async_state_change(lp, ctx, STATE_RX_AACK_ON,
         at86rf230_tx_complete);
}
