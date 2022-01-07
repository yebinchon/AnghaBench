
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_id; } ;
struct usbnet {int net; TYPE_1__ mii; } ;


 int ADVERTISE_ALL ;
 int ADVERTISE_CSMA ;
 int BMCR_RESET ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int SR9800_IPG0_DEFAULT ;
 int SR9800_IPG1_DEFAULT ;
 int SR9800_IPG2_DEFAULT ;
 int SR9800_MEDIUM_DEFAULT ;
 int SR_CMD_WRITE_IPG012 ;
 int SR_DEFAULT_RX_CTL ;
 int mii_nway_restart (TYPE_1__*) ;
 int netdev_dbg (int ,char*,int) ;
 int sr_mdio_write (int ,int ,int ,int) ;
 int sr_read_medium_status (struct usbnet*) ;
 int sr_read_rx_ctl (struct usbnet*) ;
 int sr_write_cmd (struct usbnet*,int ,int,int ,int ,int *) ;
 int sr_write_medium_mode (struct usbnet*,int ) ;
 int sr_write_rx_ctl (struct usbnet*,int ) ;

__attribute__((used)) static int sr9800_set_default_mode(struct usbnet *dev)
{
 u16 rx_ctl;
 int ret;

 sr_mdio_write(dev->net, dev->mii.phy_id, MII_BMCR, BMCR_RESET);
 sr_mdio_write(dev->net, dev->mii.phy_id, MII_ADVERTISE,
        ADVERTISE_ALL | ADVERTISE_CSMA);
 mii_nway_restart(&dev->mii);

 ret = sr_write_medium_mode(dev, SR9800_MEDIUM_DEFAULT);
 if (ret < 0)
  goto out;

 ret = sr_write_cmd(dev, SR_CMD_WRITE_IPG012,
    SR9800_IPG0_DEFAULT | SR9800_IPG1_DEFAULT,
    SR9800_IPG2_DEFAULT, 0, ((void*)0));
 if (ret < 0) {
  netdev_dbg(dev->net, "Write IPG,IPG1,IPG2 failed: %d\n", ret);
  goto out;
 }


 ret = sr_write_rx_ctl(dev, SR_DEFAULT_RX_CTL);
 if (ret < 0)
  goto out;

 rx_ctl = sr_read_rx_ctl(dev);
 netdev_dbg(dev->net, "RX_CTL is 0x%04x after all initializations\n",
     rx_ctl);

 rx_ctl = sr_read_medium_status(dev);
 netdev_dbg(dev->net, "Medium Status:0x%04x after all initializations\n",
     rx_ctl);

 return 0;
out:
 return ret;
}
