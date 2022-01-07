
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtio_net_hdr_mrg_rxbuf {int dummy; } ;
struct sk_buff {scalar_t__ cb; } ;



__attribute__((used)) static inline struct virtio_net_hdr_mrg_rxbuf *skb_vnet_hdr(struct sk_buff *skb)
{
 return (struct virtio_net_hdr_mrg_rxbuf *)skb->cb;
}
