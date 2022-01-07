
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct usbnet {TYPE_2__* net; struct ax88172a_private* driver_priv; int data; } ;
struct ax88172a_private {int phy_name; int phydev; int phy_addr; TYPE_1__* mdio; int use_embdphy; } ;
struct asix_data {int * mac_addr; } ;
struct TYPE_7__ {int dev_addr; } ;
struct TYPE_6__ {int id; } ;


 int AX88772_IPG0_DEFAULT ;
 int AX88772_IPG1_DEFAULT ;
 int AX88772_IPG2_DEFAULT ;
 int AX_CMD_WRITE_IPG0 ;
 int AX_CMD_WRITE_NODE_ID ;
 int AX_DEFAULT_RX_CTL ;
 int ETH_ALEN ;
 scalar_t__ IS_ERR (int ) ;
 char* PHY_ID_FMT ;
 int PHY_INTERFACE_MODE_MII ;
 int PTR_ERR (int ) ;
 int asix_read_medium_status (struct usbnet*,int ) ;
 int asix_read_rx_ctl (struct usbnet*,int ) ;
 int asix_write_cmd (struct usbnet*,int ,int,int ,int ,int *,int ) ;
 int asix_write_rx_ctl (struct usbnet*,int,int ) ;
 int ax88172a_adjust_link ;
 int ax88172a_reset_phy (struct usbnet*,int ) ;
 int genphy_resume (int ) ;
 int memcpy (int *,int ,int ) ;
 int msleep (int) ;
 int netdev_dbg (TYPE_2__*,char*,int ) ;
 int netdev_err (TYPE_2__*,char*,int) ;
 int netdev_info (TYPE_2__*,char*,int) ;
 int phy_connect (TYPE_2__*,int,int *,int ) ;
 int phy_start (int ) ;
 int snprintf (int,int,char*,int ,int ) ;

__attribute__((used)) static int ax88172a_reset(struct usbnet *dev)
{
 struct asix_data *data = (struct asix_data *)&dev->data;
 struct ax88172a_private *priv = dev->driver_priv;
 int ret;
 u16 rx_ctl;

 ax88172a_reset_phy(dev, priv->use_embdphy);

 msleep(150);
 rx_ctl = asix_read_rx_ctl(dev, 0);
 netdev_dbg(dev->net, "RX_CTL is 0x%04x after software reset\n", rx_ctl);
 ret = asix_write_rx_ctl(dev, 0x0000, 0);
 if (ret < 0)
  goto out;

 rx_ctl = asix_read_rx_ctl(dev, 0);
 netdev_dbg(dev->net, "RX_CTL is 0x%04x setting to 0x0000\n", rx_ctl);

 msleep(150);

 ret = asix_write_cmd(dev, AX_CMD_WRITE_IPG0,
        AX88772_IPG0_DEFAULT | AX88772_IPG1_DEFAULT,
        AX88772_IPG2_DEFAULT, 0, ((void*)0), 0);
 if (ret < 0) {
  netdev_err(dev->net, "Write IPG,IPG1,IPG2 failed: %d\n", ret);
  goto out;
 }


 memcpy(data->mac_addr, dev->net->dev_addr, ETH_ALEN);
 ret = asix_write_cmd(dev, AX_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
        data->mac_addr, 0);
 if (ret < 0)
  goto out;


 ret = asix_write_rx_ctl(dev, AX_DEFAULT_RX_CTL, 0);
 if (ret < 0)
  goto out;

 rx_ctl = asix_read_rx_ctl(dev, 0);
 netdev_dbg(dev->net, "RX_CTL is 0x%04x after all initializations\n",
     rx_ctl);

 rx_ctl = asix_read_medium_status(dev, 0);
 netdev_dbg(dev->net, "Medium Status is 0x%04x after all initializations\n",
     rx_ctl);


 snprintf(priv->phy_name, 20, PHY_ID_FMT,
   priv->mdio->id, priv->phy_addr);

 priv->phydev = phy_connect(dev->net, priv->phy_name,
       &ax88172a_adjust_link,
       PHY_INTERFACE_MODE_MII);
 if (IS_ERR(priv->phydev)) {
  netdev_err(dev->net, "Could not connect to PHY device %s\n",
      priv->phy_name);
  ret = PTR_ERR(priv->phydev);
  goto out;
 }

 netdev_info(dev->net, "Connected to phy %s\n", priv->phy_name);




 genphy_resume(priv->phydev);
 phy_start(priv->phydev);

 return 0;

out:
 return ret;

}
