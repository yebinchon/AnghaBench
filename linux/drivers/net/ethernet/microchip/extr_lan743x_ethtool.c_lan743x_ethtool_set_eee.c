
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int drv; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan743x_adapter {int netdev; } ;
struct ethtool_eee {scalar_t__ tx_lpi_timer; scalar_t__ eee_enabled; } ;


 int EINVAL ;
 int EIO ;
 int MAC_CR ;
 int MAC_CR_EEE_EN_ ;
 int MAC_EEE_TX_LPI_REQ_DLY_CNT ;
 int drv ;
 int lan743x_csr_read (struct lan743x_adapter*,int ) ;
 int lan743x_csr_write (struct lan743x_adapter*,int ,int ) ;
 struct lan743x_adapter* netdev_priv (struct net_device*) ;
 int netif_err (struct lan743x_adapter*,int ,int ,char*) ;
 int phy_ethtool_set_eee (struct phy_device*,struct ethtool_eee*) ;
 int phy_init_eee (struct phy_device*,int ) ;

__attribute__((used)) static int lan743x_ethtool_set_eee(struct net_device *netdev,
       struct ethtool_eee *eee)
{
 struct lan743x_adapter *adapter = netdev_priv(netdev);
 struct phy_device *phydev = ((void*)0);
 u32 buf = 0;
 int ret = 0;

 if (!netdev)
  return -EINVAL;
 adapter = netdev_priv(netdev);
 if (!adapter)
  return -EINVAL;
 phydev = netdev->phydev;
 if (!phydev)
  return -EIO;
 if (!phydev->drv) {
  netif_err(adapter, drv, adapter->netdev,
     "Missing PHY Driver\n");
  return -EIO;
 }

 if (eee->eee_enabled) {
  ret = phy_init_eee(phydev, 0);
  if (ret) {
   netif_err(adapter, drv, adapter->netdev,
      "EEE initialization failed\n");
   return ret;
  }

  buf = (u32)eee->tx_lpi_timer;
  lan743x_csr_write(adapter, MAC_EEE_TX_LPI_REQ_DLY_CNT, buf);

  buf = lan743x_csr_read(adapter, MAC_CR);
  buf |= MAC_CR_EEE_EN_;
  lan743x_csr_write(adapter, MAC_CR, buf);
 } else {
  buf = lan743x_csr_read(adapter, MAC_CR);
  buf &= ~MAC_CR_EEE_EN_;
  lan743x_csr_write(adapter, MAC_CR, buf);
 }

 return phy_ethtool_set_eee(phydev, eee);
}
