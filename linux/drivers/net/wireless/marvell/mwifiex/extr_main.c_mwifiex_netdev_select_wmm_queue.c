
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sk_buff {size_t priority; } ;
struct net_device {int dummy; } ;


 size_t cfg80211_classify8021d (struct sk_buff*,int *) ;
 int * mwifiex_1d_to_wmm_queue ;

__attribute__((used)) static u16
mwifiex_netdev_select_wmm_queue(struct net_device *dev, struct sk_buff *skb,
    struct net_device *sb_dev)
{
 skb->priority = cfg80211_classify8021d(skb, ((void*)0));
 return mwifiex_1d_to_wmm_queue[skb->priority];
}
