
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct ipvl_dev {struct net_device* phy_dev; } ;
typedef int __be16 ;


 struct ipvl_dev* netdev_priv (struct net_device*) ;
 int vlan_vid_add (struct net_device*,int ,int ) ;

__attribute__((used)) static int ipvlan_vlan_rx_add_vid(struct net_device *dev, __be16 proto, u16 vid)
{
 struct ipvl_dev *ipvlan = netdev_priv(dev);
 struct net_device *phy_dev = ipvlan->phy_dev;

 return vlan_vid_add(phy_dev, proto, vid);
}
