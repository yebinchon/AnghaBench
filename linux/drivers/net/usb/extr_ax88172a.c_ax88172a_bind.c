
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct usbnet {int rx_urb_size; TYPE_1__* driver_info; TYPE_2__* net; struct ax88172a_private* driver_priv; } ;
struct usb_interface {int dummy; } ;
struct ax88172a_private {int use_embdphy; int phy_addr; } ;
struct TYPE_5__ {int * ethtool_ops; int * netdev_ops; int dev_addr; } ;
struct TYPE_4__ {int flags; } ;


 int AX_CMD_READ_NODE_ID ;
 int AX_CMD_SW_PHY_STATUS ;


 int AX_PHY_SELECT_MASK ;
 int ENOMEM ;
 int ENOTSUPP ;
 int ETH_ALEN ;
 int FLAG_FRAMING_AX ;
 int GFP_KERNEL ;
 int asix_read_cmd (struct usbnet*,int ,int ,int ,int,int*,int ) ;
 int asix_read_phy_addr (struct usbnet*,int) ;
 int ax88172a_ethtool_ops ;
 int ax88172a_init_mdio (struct usbnet*) ;
 int ax88172a_netdev_ops ;
 int ax88172a_reset_phy (struct usbnet*,int) ;
 int kfree (struct ax88172a_private*) ;
 struct ax88172a_private* kzalloc (int,int ) ;
 int memcpy (int ,int*,int) ;
 int netdev_dbg (TYPE_2__*,char*,...) ;
 int netdev_err (TYPE_2__*,char*,...) ;
 int usbnet_get_endpoints (struct usbnet*,struct usb_interface*) ;

__attribute__((used)) static int ax88172a_bind(struct usbnet *dev, struct usb_interface *intf)
{
 int ret;
 u8 buf[ETH_ALEN];
 struct ax88172a_private *priv;

 usbnet_get_endpoints(dev, intf);

 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 dev->driver_priv = priv;


 ret = asix_read_cmd(dev, AX_CMD_READ_NODE_ID, 0, 0, ETH_ALEN, buf, 0);
 if (ret < 0) {
  netdev_err(dev->net, "Failed to read MAC address: %d\n", ret);
  goto free;
 }
 memcpy(dev->net->dev_addr, buf, ETH_ALEN);

 dev->net->netdev_ops = &ax88172a_netdev_ops;
 dev->net->ethtool_ops = &ax88172a_ethtool_ops;


 ret = asix_read_cmd(dev, AX_CMD_SW_PHY_STATUS, 0, 0, 1, buf, 0);
 if (ret < 0) {
  netdev_err(dev->net, "Failed to read software interface selection register: %d\n",
      ret);
  goto free;
 }

 netdev_dbg(dev->net, "AX_CMD_SW_PHY_STATUS = 0x%02x\n", buf[0]);
 switch (buf[0] & AX_PHY_SELECT_MASK) {
 case 128:
  netdev_dbg(dev->net, "use internal phy\n");
  priv->use_embdphy = 1;
  break;
 case 129:
  netdev_dbg(dev->net, "use external phy\n");
  priv->use_embdphy = 0;
  break;
 default:
  netdev_err(dev->net, "Interface mode not supported by driver\n");
  ret = -ENOTSUPP;
  goto free;
 }

 priv->phy_addr = asix_read_phy_addr(dev, priv->use_embdphy);
 ax88172a_reset_phy(dev, priv->use_embdphy);


 if (dev->driver_info->flags & FLAG_FRAMING_AX) {


  dev->rx_urb_size = 2048;
 }


 ret = ax88172a_init_mdio(dev);
 if (ret)
  goto free;

 return 0;

free:
 kfree(priv);
 return ret;
}
