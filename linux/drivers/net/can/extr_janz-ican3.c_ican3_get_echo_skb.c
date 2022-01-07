
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct sk_buff {scalar_t__ pkt_type; int dev; int ip_summed; int protocol; scalar_t__ data; } ;
struct ican3_dev {int ndev; int echoq; } ;
struct can_frame {unsigned int can_dlc; } ;


 int CHECKSUM_UNNECESSARY ;
 int ETH_P_CAN ;
 scalar_t__ PACKET_BROADCAST ;
 scalar_t__ PACKET_LOOPBACK ;
 int htons (int ) ;
 int kfree_skb (struct sk_buff*) ;
 int netdev_err (int ,char*) ;
 int netif_receive_skb (struct sk_buff*) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static unsigned int ican3_get_echo_skb(struct ican3_dev *mod)
{
 struct sk_buff *skb = skb_dequeue(&mod->echoq);
 struct can_frame *cf;
 u8 dlc;


 if (!skb) {
  netdev_err(mod->ndev, "BUG: echo skb not occupied\n");
  return 0;
 }

 cf = (struct can_frame *)skb->data;
 dlc = cf->can_dlc;


 if (skb->pkt_type != PACKET_LOOPBACK) {
  kfree_skb(skb);
  return dlc;
 }

 skb->protocol = htons(ETH_P_CAN);
 skb->pkt_type = PACKET_BROADCAST;
 skb->ip_summed = CHECKSUM_UNNECESSARY;
 skb->dev = mod->ndev;
 netif_receive_skb(skb);
 return dlc;
}
