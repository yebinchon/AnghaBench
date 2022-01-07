
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dev_addr; } ;
struct macvlan_dev {struct net_device* lowerdev; } ;


 int dev_hard_header (struct sk_buff*,struct net_device*,unsigned short,void const*,int ,unsigned int) ;
 struct macvlan_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int macvlan_hard_header(struct sk_buff *skb, struct net_device *dev,
          unsigned short type, const void *daddr,
          const void *saddr, unsigned len)
{
 const struct macvlan_dev *vlan = netdev_priv(dev);
 struct net_device *lowerdev = vlan->lowerdev;

 return dev_hard_header(skb, lowerdev, type, daddr,
          saddr ? : dev->dev_addr, len);
}
