
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_4__ {int phy_id; } ;
struct usbnet {TYPE_2__* net; TYPE_1__ mii; int data; } ;
struct asix_data {int * mac_addr; } ;
struct TYPE_5__ {int dev_addr; } ;


 int AX88772_IPG0_DEFAULT ;
 int AX88772_IPG1_DEFAULT ;
 int AX88772_IPG2_DEFAULT ;
 int AX88772_MEDIUM_DEFAULT ;
 int AX_CMD_SW_PHY_SELECT ;
 int AX_CMD_WRITE_IPG0 ;
 int AX_CMD_WRITE_NODE_ID ;
 int AX_DEFAULT_RX_CTL ;
 int AX_GPIO_GPO2EN ;
 int AX_GPIO_GPO_2 ;
 int AX_GPIO_RSE ;
 int AX_SWRESET_CLEAR ;
 int AX_SWRESET_IPPD ;
 int AX_SWRESET_IPRL ;
 int AX_SWRESET_PRL ;
 int EIO ;
 int ETH_ALEN ;
 int MII_PHYSID1 ;
 int asix_mdio_read_nopm (TYPE_2__*,int,int ) ;
 int asix_read_medium_status (struct usbnet*,int) ;
 int asix_read_rx_ctl (struct usbnet*,int) ;
 int asix_sw_reset (struct usbnet*,int,int) ;
 int asix_write_cmd (struct usbnet*,int ,int,int ,int ,int *,int) ;
 int asix_write_gpio (struct usbnet*,int,int,int) ;
 int asix_write_medium_mode (struct usbnet*,int ,int) ;
 int asix_write_rx_ctl (struct usbnet*,int ,int) ;
 int ether_addr_copy (int *,int ) ;
 int msleep (int) ;
 int netdev_dbg (TYPE_2__*,char*,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ax88772_hw_reset(struct usbnet *dev, int in_pm)
{
 struct asix_data *data = (struct asix_data *)&dev->data;
 int ret, embd_phy;
 u16 rx_ctl;

 ret = asix_write_gpio(dev, AX_GPIO_RSE | AX_GPIO_GPO_2 |
         AX_GPIO_GPO2EN, 5, in_pm);
 if (ret < 0)
  goto out;

 embd_phy = ((dev->mii.phy_id & 0x1f) == 0x10 ? 1 : 0);

 ret = asix_write_cmd(dev, AX_CMD_SW_PHY_SELECT, embd_phy,
        0, 0, ((void*)0), in_pm);
 if (ret < 0) {
  netdev_dbg(dev->net, "Select PHY #1 failed: %d\n", ret);
  goto out;
 }

 if (embd_phy) {
  ret = asix_sw_reset(dev, AX_SWRESET_IPPD, in_pm);
  if (ret < 0)
   goto out;

  usleep_range(10000, 11000);

  ret = asix_sw_reset(dev, AX_SWRESET_CLEAR, in_pm);
  if (ret < 0)
   goto out;

  msleep(60);

  ret = asix_sw_reset(dev, AX_SWRESET_IPRL | AX_SWRESET_PRL,
        in_pm);
  if (ret < 0)
   goto out;
 } else {
  ret = asix_sw_reset(dev, AX_SWRESET_IPPD | AX_SWRESET_PRL,
        in_pm);
  if (ret < 0)
   goto out;
 }

 msleep(150);

 if (in_pm && (!asix_mdio_read_nopm(dev->net, dev->mii.phy_id,
        MII_PHYSID1))){
  ret = -EIO;
  goto out;
 }

 ret = asix_write_rx_ctl(dev, AX_DEFAULT_RX_CTL, in_pm);
 if (ret < 0)
  goto out;

 ret = asix_write_medium_mode(dev, AX88772_MEDIUM_DEFAULT, in_pm);
 if (ret < 0)
  goto out;

 ret = asix_write_cmd(dev, AX_CMD_WRITE_IPG0,
        AX88772_IPG0_DEFAULT | AX88772_IPG1_DEFAULT,
        AX88772_IPG2_DEFAULT, 0, ((void*)0), in_pm);
 if (ret < 0) {
  netdev_dbg(dev->net, "Write IPG,IPG1,IPG2 failed: %d\n", ret);
  goto out;
 }


 ether_addr_copy(data->mac_addr, dev->net->dev_addr);
 ret = asix_write_cmd(dev, AX_CMD_WRITE_NODE_ID, 0, 0,
        ETH_ALEN, data->mac_addr, in_pm);
 if (ret < 0)
  goto out;


 ret = asix_write_rx_ctl(dev, AX_DEFAULT_RX_CTL, in_pm);
 if (ret < 0)
  goto out;

 rx_ctl = asix_read_rx_ctl(dev, in_pm);
 netdev_dbg(dev->net, "RX_CTL is 0x%04x after all initializations\n",
     rx_ctl);

 rx_ctl = asix_read_medium_status(dev, in_pm);
 netdev_dbg(dev->net,
     "Medium Status is 0x%04x after all initializations\n",
     rx_ctl);

 return 0;

out:
 return ret;
}
