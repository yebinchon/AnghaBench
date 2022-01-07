
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int queue_mapping; int * data; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct ethhdr {int h_proto; } ;


 int ETH_P_IP ;
 int GFP_KERNEL ;
 int HNS_LB_TX_RING ;
 struct sk_buff* alloc_skb (int,int ) ;
 int htons (int ) ;
 int memset (int *,int,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static struct sk_buff *hns_assemble_skb(struct net_device *ndev)
{
 struct sk_buff *skb;
 struct ethhdr *ethhdr;
 int frame_len;


 skb = alloc_skb(64, GFP_KERNEL);
 if (!skb)
  return ((void*)0);

 skb_put(skb, 64);
 skb->dev = ndev;
 memset(skb->data, 0xFF, skb->len);


 ethhdr = (struct ethhdr *)skb->data;
 ethhdr->h_proto = htons(ETH_P_IP);

 frame_len = skb->len & (~1ul);
 memset(&skb->data[frame_len / 2], 0xAA,
        frame_len / 2 - 1);

 skb->queue_mapping = HNS_LB_TX_RING;

 return skb;
}
