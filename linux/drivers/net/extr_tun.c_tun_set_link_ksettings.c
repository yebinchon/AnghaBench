
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tun_struct {int link_ksettings; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int memcpy (int *,struct ethtool_link_ksettings const*,int) ;
 struct tun_struct* netdev_priv (struct net_device*) ;

__attribute__((used)) static int tun_set_link_ksettings(struct net_device *dev,
      const struct ethtool_link_ksettings *cmd)
{
 struct tun_struct *tun = netdev_priv(dev);

 memcpy(&tun->link_ksettings, cmd, sizeof(*cmd));
 return 0;
}
