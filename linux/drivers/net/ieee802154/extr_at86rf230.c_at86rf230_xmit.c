
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct ieee802154_hw {struct at86rf230_local* priv; } ;
struct at86rf230_state_change {int dummy; } ;
struct at86rf230_local {int is_tx_from_off; int cal_timeout; scalar_t__ tx_retry; struct sk_buff* tx_skb; struct at86rf230_state_change tx; } ;


 int STATE_TRX_OFF ;
 int at86rf230_async_state_change (struct at86rf230_local*,struct at86rf230_state_change*,int ,int (*) (struct at86rf230_state_change*)) ;
 int at86rf230_xmit_start (struct at86rf230_state_change*) ;
 scalar_t__ time_is_before_jiffies (int ) ;

__attribute__((used)) static int
at86rf230_xmit(struct ieee802154_hw *hw, struct sk_buff *skb)
{
 struct at86rf230_local *lp = hw->priv;
 struct at86rf230_state_change *ctx = &lp->tx;

 lp->tx_skb = skb;
 lp->tx_retry = 0;
 if (time_is_before_jiffies(lp->cal_timeout)) {
  lp->is_tx_from_off = 1;
  at86rf230_async_state_change(lp, ctx, STATE_TRX_OFF,
          at86rf230_xmit_start);
 } else {
  lp->is_tx_from_off = 0;
  at86rf230_xmit_start(ctx);
 }

 return 0;
}
