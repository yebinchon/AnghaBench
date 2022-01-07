
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int read_reg; } ;
struct TYPE_5__ {int mdio; TYPE_1__ ops; } ;
struct TYPE_6__ {TYPE_2__ phy; } ;
struct ixgbe_adapter {TYPE_3__ hw; } ;
struct ifreq {int dummy; } ;


 int EOPNOTSUPP ;



 int if_mii (struct ifreq*) ;
 int ixgbe_ptp_get_ts_config (struct ixgbe_adapter*,struct ifreq*) ;
 int ixgbe_ptp_set_ts_config (struct ixgbe_adapter*,struct ifreq*) ;
 int mdio_mii_ioctl (int *,int ,int) ;
 struct ixgbe_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ixgbe_ioctl(struct net_device *netdev, struct ifreq *req, int cmd)
{
 struct ixgbe_adapter *adapter = netdev_priv(netdev);

 switch (cmd) {
 case 128:
  return ixgbe_ptp_set_ts_config(adapter, req);
 case 130:
  return ixgbe_ptp_get_ts_config(adapter, req);
 case 129:
  if (!adapter->hw.phy.ops.read_reg)
   return -EOPNOTSUPP;

 default:
  return mdio_mii_ioctl(&adapter->hw.phy.mdio, if_mii(req), cmd);
 }
}
