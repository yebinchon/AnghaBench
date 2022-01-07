
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_if_info {int phy_id_mask; int reg_num_mask; int phy_id; int (* mdio_write ) (struct net_device*,int ,int ,int) ;int mdio_read; struct net_device* dev; } ;
struct usbnet {int rx_urb_size; struct mii_if_info mii; scalar_t__ hard_mtu; struct net_device* net; } ;
struct usb_interface {int dummy; } ;
struct net_device {int dev_addr; scalar_t__ hard_header_len; scalar_t__ mtu; int * ethtool_ops; int * netdev_ops; } ;


 int ADVERTISE_ALL ;
 int ADVERTISE_CSMA ;
 int ADVERTISE_PAUSE_CAP ;
 int BMCR_RESET ;
 int ENODEV ;
 int ETH_ALEN ;
 int MII_ADVERTISE ;
 int MII_BMCR ;
 int NCR_RST ;
 int PRR_PHY_RST ;
 int SR_NCR ;
 int SR_PAR ;
 int SR_PRR ;
 scalar_t__ SR_TX_OVERHEAD ;
 int mii_nway_restart (struct mii_if_info*) ;
 int msleep (int) ;
 int netdev_err (struct net_device*,char*) ;
 int sr9700_ethtool_ops ;
 int sr9700_netdev_ops ;
 int sr9700_set_multicast (struct net_device*) ;
 int sr_mdio_read ;
 int sr_mdio_write (struct net_device*,int ,int ,int) ;
 scalar_t__ sr_read (struct usbnet*,int ,int ,int ) ;
 int sr_write_reg (struct usbnet*,int ,int ) ;
 int udelay (int) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int sr9700_bind(struct usbnet *dev, struct usb_interface *intf)
{
 struct net_device *netdev;
 struct mii_if_info *mii;
 int ret;

 ret = usbnet_get_endpoints(dev, intf);
 if (ret)
  goto out;

 netdev = dev->net;

 netdev->netdev_ops = &sr9700_netdev_ops;
 netdev->ethtool_ops = &sr9700_ethtool_ops;
 netdev->hard_header_len += SR_TX_OVERHEAD;
 dev->hard_mtu = netdev->mtu + netdev->hard_header_len;

 dev->rx_urb_size = 3072;

 mii = &dev->mii;
 mii->dev = netdev;
 mii->mdio_read = sr_mdio_read;
 mii->mdio_write = sr_mdio_write;
 mii->phy_id_mask = 0x1f;
 mii->reg_num_mask = 0x1f;

 sr_write_reg(dev, SR_NCR, NCR_RST);
 udelay(20);






 if (sr_read(dev, SR_PAR, ETH_ALEN, netdev->dev_addr) < 0) {
  netdev_err(netdev, "Error reading MAC address\n");
  ret = -ENODEV;
  goto out;
 }


 sr_write_reg(dev, SR_PRR, PRR_PHY_RST);

 msleep(20);
 sr_write_reg(dev, SR_PRR, 0);

 udelay(2 * 1000);


 sr9700_set_multicast(netdev);

 sr_mdio_write(netdev, mii->phy_id, MII_BMCR, BMCR_RESET);
 sr_mdio_write(netdev, mii->phy_id, MII_ADVERTISE, ADVERTISE_ALL |
        ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP);
 mii_nway_restart(mii);

out:
 return ret;
}
