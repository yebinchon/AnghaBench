
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct velocity_info {int netdev; } ;
struct sk_buff {int data; int ip_summed; } ;


 struct sk_buff* netdev_alloc_skb_ip_align (int ,int) ;
 int rx_copybreak ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,int) ;

__attribute__((used)) static int velocity_rx_copy(struct sk_buff **rx_skb, int pkt_size,
       struct velocity_info *vptr)
{
 int ret = -1;
 if (pkt_size < rx_copybreak) {
  struct sk_buff *new_skb;

  new_skb = netdev_alloc_skb_ip_align(vptr->netdev, pkt_size);
  if (new_skb) {
   new_skb->ip_summed = rx_skb[0]->ip_summed;
   skb_copy_from_linear_data(*rx_skb, new_skb->data, pkt_size);
   *rx_skb = new_skb;
   ret = 0;
  }

 }
 return ret;
}
