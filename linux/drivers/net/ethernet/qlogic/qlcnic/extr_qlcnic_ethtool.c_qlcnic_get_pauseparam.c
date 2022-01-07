
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct net_device {int dev; } ;
struct ethtool_pauseparam {int rx_pause; int tx_pause; } ;
typedef int __u32 ;
struct TYPE_2__ {int physical_port; scalar_t__ port_type; } ;


 int EIO ;
 scalar_t__ QLCNIC_GBE ;
 int QLCNIC_NIU_GB_MAC_CONFIG_0 (int) ;
 int QLCNIC_NIU_GB_PAUSE_CTL ;
 int QLCNIC_NIU_MAX_GBE_PORTS ;
 int QLCNIC_NIU_MAX_XG_PORTS ;
 int QLCNIC_NIU_XG_PAUSE_CTL ;
 scalar_t__ QLCNIC_XGBE ;
 int QLCRD32 (struct qlcnic_adapter*,int ,int*) ;
 int dev_err (int *,char*,scalar_t__) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_get_pauseparam (struct qlcnic_adapter*,struct ethtool_pauseparam*) ;
 int qlcnic_gb_get_gb0_mask (int ) ;
 int qlcnic_gb_get_gb1_mask (int ) ;
 int qlcnic_gb_get_gb2_mask (int ) ;
 int qlcnic_gb_get_gb3_mask (int ) ;
 int qlcnic_gb_get_rx_flowctl (int ) ;
 int qlcnic_xg_get_xg0_mask (int ) ;
 int qlcnic_xg_get_xg1_mask (int ) ;

__attribute__((used)) static void
qlcnic_get_pauseparam(struct net_device *netdev,
     struct ethtool_pauseparam *pause)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);
 int port = adapter->ahw->physical_port;
 int err = 0;
 __u32 val;

 if (qlcnic_83xx_check(adapter)) {
  qlcnic_83xx_get_pauseparam(adapter, pause);
  return;
 }
 if (adapter->ahw->port_type == QLCNIC_GBE) {
  if ((port < 0) || (port > QLCNIC_NIU_MAX_GBE_PORTS))
   return;

  val = QLCRD32(adapter, QLCNIC_NIU_GB_MAC_CONFIG_0(port), &err);
  if (err == -EIO)
   return;
  pause->rx_pause = qlcnic_gb_get_rx_flowctl(val);
  val = QLCRD32(adapter, QLCNIC_NIU_GB_PAUSE_CTL, &err);
  if (err == -EIO)
   return;
  switch (port) {
  case 0:
   pause->tx_pause = !(qlcnic_gb_get_gb0_mask(val));
   break;
  case 1:
   pause->tx_pause = !(qlcnic_gb_get_gb1_mask(val));
   break;
  case 2:
   pause->tx_pause = !(qlcnic_gb_get_gb2_mask(val));
   break;
  case 3:
  default:
   pause->tx_pause = !(qlcnic_gb_get_gb3_mask(val));
   break;
  }
 } else if (adapter->ahw->port_type == QLCNIC_XGBE) {
  if ((port < 0) || (port > QLCNIC_NIU_MAX_XG_PORTS))
   return;
  pause->rx_pause = 1;
  val = QLCRD32(adapter, QLCNIC_NIU_XG_PAUSE_CTL, &err);
  if (err == -EIO)
   return;
  if (port == 0)
   pause->tx_pause = !(qlcnic_xg_get_xg0_mask(val));
  else
   pause->tx_pause = !(qlcnic_xg_get_xg1_mask(val));
 } else {
  dev_err(&netdev->dev, "Unknown board type: %x\n",
     adapter->ahw->port_type);
 }
}
