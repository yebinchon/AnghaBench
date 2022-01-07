
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int tx_flags; } ;


 int RAVB_BE ;
 int RAVB_NC ;
 int SKBTX_HW_TSTAMP ;
 TYPE_1__* skb_shinfo (struct sk_buff*) ;

__attribute__((used)) static u16 ravb_select_queue(struct net_device *ndev, struct sk_buff *skb,
        struct net_device *sb_dev)
{

 return (skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP) ? RAVB_NC :
              RAVB_BE;

}
