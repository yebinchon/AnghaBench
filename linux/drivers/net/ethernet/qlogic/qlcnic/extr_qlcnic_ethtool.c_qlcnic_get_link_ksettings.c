
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int EIO ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_82xx_get_link_ksettings (struct qlcnic_adapter*,struct ethtool_link_ksettings*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_get_link_ksettings (struct qlcnic_adapter*,struct ethtool_link_ksettings*) ;

__attribute__((used)) static int qlcnic_get_link_ksettings(struct net_device *dev,
         struct ethtool_link_ksettings *ecmd)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);

 if (qlcnic_82xx_check(adapter))
  return qlcnic_82xx_get_link_ksettings(adapter, ecmd);
 else if (qlcnic_83xx_check(adapter))
  return qlcnic_83xx_get_link_ksettings(adapter, ecmd);

 return -EIO;
}
