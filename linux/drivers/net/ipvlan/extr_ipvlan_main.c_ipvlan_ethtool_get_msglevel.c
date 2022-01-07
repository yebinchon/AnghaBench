
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ipvl_dev {int msg_enable; } ;


 struct ipvl_dev* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 ipvlan_ethtool_get_msglevel(struct net_device *dev)
{
 const struct ipvl_dev *ipvlan = netdev_priv(dev);

 return ipvlan->msg_enable;
}
