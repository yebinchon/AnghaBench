
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct net_device {int dev_addr; } ;
struct ipvl_dev {struct net_device* phy_dev; } ;


 int dev_hard_header (struct sk_buff*,struct net_device*,unsigned short,void const*,int ,unsigned int) ;
 struct ipvl_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ipvlan_hard_header(struct sk_buff *skb, struct net_device *dev,
         unsigned short type, const void *daddr,
         const void *saddr, unsigned len)
{
 const struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct net_device *phy_dev = ipvlan->phy_dev;





 return dev_hard_header(skb, phy_dev, type, daddr,
          saddr ? : phy_dev->dev_addr, len);
}
