
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ cb; } ;
struct phy_device {struct dp83640_private* priv; } ;
struct dp83640_skb_info {scalar_t__ tmo; } ;
struct dp83640_private {int hwts_tx_en; int tx_queue; } ;
struct TYPE_2__ {int tx_flags; } ;





 int SKBTX_IN_PROGRESS ;
 scalar_t__ SKB_TIMESTAMP_TIMEOUT ;
 int is_sync (struct sk_buff*,int) ;
 scalar_t__ jiffies ;
 int kfree_skb (struct sk_buff*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static void dp83640_txtstamp(struct phy_device *phydev,
        struct sk_buff *skb, int type)
{
 struct dp83640_skb_info *skb_info = (struct dp83640_skb_info *)skb->cb;
 struct dp83640_private *dp83640 = phydev->priv;

 switch (dp83640->hwts_tx_en) {

 case 128:
  if (is_sync(skb, type)) {
   kfree_skb(skb);
   return;
  }

 case 129:
  skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
  skb_info->tmo = jiffies + SKB_TIMESTAMP_TIMEOUT;
  skb_queue_tail(&dp83640->tx_queue, skb);
  break;

 case 130:
 default:
  kfree_skb(skb);
  break;
 }
}
