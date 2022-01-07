
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct at86rf230_state_change {struct at86rf230_local* lp; } ;
struct at86rf230_local {int tx_skb; int hw; } ;


 int ieee802154_xmit_complete (int ,int ,int) ;
 int kfree (struct at86rf230_state_change*) ;

__attribute__((used)) static void
at86rf230_tx_complete(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;

 ieee802154_xmit_complete(lp->hw, lp->tx_skb, 0);
 kfree(ctx);
}
