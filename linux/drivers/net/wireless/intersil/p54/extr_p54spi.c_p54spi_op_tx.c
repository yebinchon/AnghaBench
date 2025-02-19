
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct p54s_tx_info {int tx_list; } ;
struct p54s_priv {int work; int hw; int tx_lock; int tx_pending; } ;
struct p54_tx_info {scalar_t__ data; } ;
struct ieee80211_tx_info {scalar_t__ rate_driver_data; } ;
struct ieee80211_hw {struct p54s_priv* priv; } ;


 int BUILD_BUG_ON (int) ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int ieee80211_queue_work (int ,int *) ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void p54spi_op_tx(struct ieee80211_hw *dev, struct sk_buff *skb)
{
 struct p54s_priv *priv = dev->priv;
 struct ieee80211_tx_info *info = IEEE80211_SKB_CB(skb);
 struct p54_tx_info *mi = (struct p54_tx_info *) info->rate_driver_data;
 struct p54s_tx_info *di = (struct p54s_tx_info *) mi->data;
 unsigned long flags;

 BUILD_BUG_ON(sizeof(*di) > sizeof((mi->data)));

 spin_lock_irqsave(&priv->tx_lock, flags);
 list_add_tail(&di->tx_list, &priv->tx_pending);
 spin_unlock_irqrestore(&priv->tx_lock, flags);

 ieee80211_queue_work(priv->hw, &priv->work);
}
