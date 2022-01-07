
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pasemi_mac {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct pasemi_mac* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32
pasemi_mac_ethtool_get_msglevel(struct net_device *netdev)
{
 struct pasemi_mac *mac = netdev_priv(netdev);
 return mac->msg_enable;
}
