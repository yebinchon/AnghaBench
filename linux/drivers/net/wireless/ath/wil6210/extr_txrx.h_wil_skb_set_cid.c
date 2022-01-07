
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int cid; } ;
struct skb_rx_info {TYPE_1__ rx_info; } ;
struct sk_buff {scalar_t__ cb; } ;



__attribute__((used)) static inline void wil_skb_set_cid(struct sk_buff *skb, u8 cid)
{
 struct skb_rx_info *skb_rx_info = (void *)skb->cb;

 skb_rx_info->rx_info.cid = cid;
}
