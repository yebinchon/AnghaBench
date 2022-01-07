
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_state_change {struct at86rf230_local* lp; } ;
struct at86rf230_local {scalar_t__ is_tx; } ;


 int STATE_RX_AACK_ON ;
 int at86rf230_async_error_recover_complete ;
 int at86rf230_async_state_change (struct at86rf230_local*,struct at86rf230_state_change*,int ,int ) ;

__attribute__((used)) static void
at86rf230_async_error_recover(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;

 lp->is_tx = 0;
 at86rf230_async_state_change(lp, ctx, STATE_RX_AACK_ON,
         at86rf230_async_error_recover_complete);
}
