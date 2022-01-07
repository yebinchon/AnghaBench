
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct phy_device {int dummy; } ;
struct net_device {struct phy_device* phydev; } ;
struct lan78xx_net {int intf; } ;
struct ethtool_eee {int eee_enabled; int eee_active; int advertised; int lp_advertised; int tx_lpi_enabled; int tx_lpi_timer; } ;


 int EEE_TX_LPI_REQ_DLY ;
 int MAC_CR ;
 int MAC_CR_EEE_EN_ ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 struct lan78xx_net* netdev_priv (struct net_device*) ;
 int phy_ethtool_get_eee (struct phy_device*,struct ethtool_eee*) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int lan78xx_get_eee(struct net_device *net, struct ethtool_eee *edata)
{
 struct lan78xx_net *dev = netdev_priv(net);
 struct phy_device *phydev = net->phydev;
 int ret;
 u32 buf;

 ret = usb_autopm_get_interface(dev->intf);
 if (ret < 0)
  return ret;

 ret = phy_ethtool_get_eee(phydev, edata);
 if (ret < 0)
  goto exit;

 ret = lan78xx_read_reg(dev, MAC_CR, &buf);
 if (buf & MAC_CR_EEE_EN_) {
  edata->eee_enabled = 1;
  edata->eee_active = !!(edata->advertised &
           edata->lp_advertised);
  edata->tx_lpi_enabled = 1;

  ret = lan78xx_read_reg(dev, EEE_TX_LPI_REQ_DLY, &buf);
  edata->tx_lpi_timer = buf;
 } else {
  edata->eee_enabled = 0;
  edata->eee_active = 0;
  edata->tx_lpi_enabled = 0;
  edata->tx_lpi_timer = 0;
 }

 ret = 0;
exit:
 usb_autopm_put_interface(dev->intf);

 return ret;
}
