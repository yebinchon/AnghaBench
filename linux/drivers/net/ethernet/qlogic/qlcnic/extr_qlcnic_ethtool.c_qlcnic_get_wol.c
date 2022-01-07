
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct qlcnic_adapter {unsigned long portnum; } ;
struct net_device {int dummy; } ;
struct ethtool_wolinfo {int wolopts; int supported; } ;


 int EIO ;
 int QLCNIC_WOL_CONFIG ;
 int QLCNIC_WOL_CONFIG_NV ;
 unsigned long QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int WAKE_MAGIC ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static void
qlcnic_get_wol(struct net_device *dev, struct ethtool_wolinfo *wol)
{
 struct qlcnic_adapter *adapter = netdev_priv(dev);
 u32 wol_cfg;
 int err = 0;

 if (qlcnic_83xx_check(adapter))
  return;
 wol->supported = 0;
 wol->wolopts = 0;

 wol_cfg = QLCRD32(adapter, QLCNIC_WOL_CONFIG_NV, &err);
 if (err == -EIO)
  return;
 if (wol_cfg & (1UL << adapter->portnum))
  wol->supported |= WAKE_MAGIC;

 wol_cfg = QLCRD32(adapter, QLCNIC_WOL_CONFIG, &err);
 if (wol_cfg & (1UL << adapter->portnum))
  wol->wolopts |= WAKE_MAGIC;
}
