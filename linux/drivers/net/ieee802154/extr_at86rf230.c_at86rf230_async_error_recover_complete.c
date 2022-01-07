
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_state_change {scalar_t__ free; struct at86rf230_local* lp; } ;
struct at86rf230_local {int hw; } ;


 int ieee802154_wake_queue (int ) ;
 int kfree (struct at86rf230_state_change*) ;

__attribute__((used)) static void
at86rf230_async_error_recover_complete(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;

 if (ctx->free)
  kfree(ctx);

 ieee802154_wake_queue(lp->hw);
}
