
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct usbnet {int net; scalar_t__* data; } ;
struct smsc75xx_priv {int suspend_flags; } ;


 int EBUSY ;
 int FCT_RX_CTL ;
 int FCT_RX_CTL_RXUSED ;
 int PMT_CTL ;
 int PMT_CTL_PHY_RST ;
 int PMT_CTL_RES_CLR_WKP_EN ;
 int PMT_CTL_SUS_MODE ;
 int PMT_CTL_SUS_MODE_3 ;
 int PMT_CTL_WUPS ;
 int PMT_CTL_WUPS_WOL ;
 int SUSPEND_SUSPEND3 ;
 int netdev_dbg (int ,char*) ;
 int netdev_warn (int ,char*) ;
 int smsc75xx_read_reg_nopm (struct usbnet*,int ,int*) ;
 int smsc75xx_write_reg_nopm (struct usbnet*,int ,int) ;

__attribute__((used)) static int smsc75xx_enter_suspend3(struct usbnet *dev)
{
 struct smsc75xx_priv *pdata = (struct smsc75xx_priv *)(dev->data[0]);
 u32 val;
 int ret;

 ret = smsc75xx_read_reg_nopm(dev, FCT_RX_CTL, &val);
 if (ret < 0) {
  netdev_warn(dev->net, "Error reading FCT_RX_CTL\n");
  return ret;
 }

 if (val & FCT_RX_CTL_RXUSED) {
  netdev_dbg(dev->net, "rx fifo not empty in autosuspend\n");
  return -EBUSY;
 }

 ret = smsc75xx_read_reg_nopm(dev, PMT_CTL, &val);
 if (ret < 0) {
  netdev_warn(dev->net, "Error reading PMT_CTL\n");
  return ret;
 }

 val &= ~(PMT_CTL_SUS_MODE | PMT_CTL_WUPS | PMT_CTL_PHY_RST);
 val |= PMT_CTL_SUS_MODE_3 | PMT_CTL_RES_CLR_WKP_EN;

 ret = smsc75xx_write_reg_nopm(dev, PMT_CTL, val);
 if (ret < 0) {
  netdev_warn(dev->net, "Error writing PMT_CTL\n");
  return ret;
 }


 val &= ~PMT_CTL_WUPS;
 val |= PMT_CTL_WUPS_WOL;

 ret = smsc75xx_write_reg_nopm(dev, PMT_CTL, val);
 if (ret < 0) {
  netdev_warn(dev->net, "Error writing PMT_CTL\n");
  return ret;
 }

 pdata->suspend_flags |= SUSPEND_SUSPEND3;

 return 0;
}
