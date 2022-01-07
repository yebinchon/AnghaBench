
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct carl9170_tx_info {int ref; } ;
struct TYPE_2__ {scalar_t__ rate_driver_data; } ;


 TYPE_1__* IEEE80211_SKB_CB (struct sk_buff*) ;
 int carl9170_tx_release ;
 int kref_put (int *,int ) ;

int carl9170_tx_put_skb(struct sk_buff *skb)
{
 struct carl9170_tx_info *arinfo = (void *)
  (IEEE80211_SKB_CB(skb))->rate_driver_data;

 return kref_put(&arinfo->ref, carl9170_tx_release);
}
