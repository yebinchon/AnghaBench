
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;


 int GFP_ATOMIC ;
 struct sk_buff* __netdev_alloc_skb (struct net_device*,unsigned int,int ) ;

__attribute__((used)) static inline struct sk_buff *fza_alloc_skb_irq(struct net_device *dev,
      unsigned int length)
{
 return __netdev_alloc_skb(dev, length, GFP_ATOMIC);
}
