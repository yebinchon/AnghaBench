
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct emac_instance {int rx_skb_size; int ndev; } ;


 int GFP_KERNEL ;
 int __emac_prepare_rx_skb (struct sk_buff*,struct emac_instance*,int) ;
 struct sk_buff* __netdev_alloc_skb_ip_align (int ,int ,int ) ;

__attribute__((used)) static int
emac_alloc_rx_skb(struct emac_instance *dev, int slot)
{
 struct sk_buff *skb;

 skb = __netdev_alloc_skb_ip_align(dev->ndev, dev->rx_skb_size,
       GFP_KERNEL);

 return __emac_prepare_rx_skb(skb, dev, slot);
}
