
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void vring_rx_desc ;
struct sk_buff {scalar_t__ cb; } ;



__attribute__((used)) static inline struct vring_rx_desc *wil_skb_rxdesc(struct sk_buff *skb)
{
 return (void *)skb->cb;
}
