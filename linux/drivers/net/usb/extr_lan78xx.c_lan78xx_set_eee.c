
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int phydev; } ;
struct lan78xx_net {int intf; } ;
struct ethtool_eee {scalar_t__ tx_lpi_timer; scalar_t__ eee_enabled; } ;


 int EEE_TX_LPI_REQ_DLY ;
 int MAC_CR ;
 int MAC_CR_EEE_EN_ ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int *) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int ) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int phy_ethtool_set_eee (int ,struct ethtool_eee*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int lan78xx_set_eee(struct net_device *net, struct ethtool_eee *edata)
{
 struct lan78xx_net *dev = netdev_priv(net);
 int ret;
 u32 buf;

 ret = usb_autopm_get_interface(dev->intf);
 if (ret < 0)
  return ret;

 if (edata->eee_enabled) {
  ret = lan78xx_read_reg(dev, MAC_CR, &buf);
  buf |= MAC_CR_EEE_EN_;
  ret = lan78xx_write_reg(dev, MAC_CR, buf);

  phy_ethtool_set_eee(net->phydev, edata);

  buf = (u32)edata->tx_lpi_timer;
  ret = lan78xx_write_reg(dev, EEE_TX_LPI_REQ_DLY, buf);
 } else {
  ret = lan78xx_read_reg(dev, MAC_CR, &buf);
  buf &= ~MAC_CR_EEE_EN_;
  ret = lan78xx_write_reg(dev, MAC_CR, buf);
 }

 usb_autopm_put_interface(dev->intf);

 return 0;
}
