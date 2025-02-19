
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_5__ {int phy_id; } ;
struct usbnet {TYPE_2__* net; TYPE_1__ mii; int data; } ;
struct asix_data {int * mac_addr; } ;
struct TYPE_6__ {int dev_addr; } ;


 int AX88772A_PHY14H ;
 int AX88772A_PHY14H_DEFAULT ;
 int AX88772A_PHY15H ;
 int AX88772A_PHY15H_DEFAULT ;
 int AX88772A_PHY16H ;
 int AX88772A_PHY16H_DEFAULT ;
 int AX88772_IPG0_DEFAULT ;
 int AX88772_IPG1_DEFAULT ;
 int AX88772_IPG2_DEFAULT ;
 int AX88772_MEDIUM_DEFAULT ;
 int AX_AX88772A_CHIPCODE ;
 int AX_AX88772B_CHIPCODE ;
 int AX_CHIPCODE_MASK ;
 int AX_CMD_STATMNGSTS_REG ;
 int AX_CMD_SW_PHY_SELECT ;
 int AX_CMD_WRITE_IPG0 ;
 int AX_CMD_WRITE_NODE_ID ;
 int AX_DEFAULT_RX_CTL ;
 int AX_GPIO_RSE ;
 int AX_PHYSEL_SSEN ;
 int AX_QCTCTRL ;
 int AX_SWRESET_CLEAR ;
 int AX_SWRESET_IPPD ;
 int AX_SWRESET_IPRL ;
 int ETH_ALEN ;
 int MII_PHYSID1 ;
 int asix_mdio_read_nopm (TYPE_2__*,int,int ) ;
 int asix_mdio_write_nopm (TYPE_2__*,int,int ,int) ;
 int asix_read_cmd (struct usbnet*,int ,int ,int ,int,int*,int) ;
 int asix_read_medium_status (struct usbnet*,int) ;
 int asix_read_rx_ctl (struct usbnet*,int) ;
 int asix_sw_reset (struct usbnet*,int,int) ;
 int asix_write_cmd (struct usbnet*,int ,int,int,int ,int *,int) ;
 int asix_write_gpio (struct usbnet*,int ,int,int) ;
 int asix_write_medium_mode (struct usbnet*,int ,int) ;
 int asix_write_rx_ctl (struct usbnet*,int ,int) ;
 int memcpy (int *,int ,int ) ;
 int msleep (int) ;
 int netdev_dbg (TYPE_2__*,char*,int,...) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ax88772a_hw_reset(struct usbnet *dev, int in_pm)
{
 struct asix_data *data = (struct asix_data *)&dev->data;
 int ret, embd_phy;
 u16 rx_ctl, phy14h, phy15h, phy16h;
 u8 chipcode = 0;

 ret = asix_write_gpio(dev, AX_GPIO_RSE, 5, in_pm);
 if (ret < 0)
  goto out;

 embd_phy = ((dev->mii.phy_id & 0x1f) == 0x10 ? 1 : 0);

 ret = asix_write_cmd(dev, AX_CMD_SW_PHY_SELECT, embd_phy |
        AX_PHYSEL_SSEN, 0, 0, ((void*)0), in_pm);
 if (ret < 0) {
  netdev_dbg(dev->net, "Select PHY #1 failed: %d\n", ret);
  goto out;
 }
 usleep_range(10000, 11000);

 ret = asix_sw_reset(dev, AX_SWRESET_IPPD | AX_SWRESET_IPRL, in_pm);
 if (ret < 0)
  goto out;

 usleep_range(10000, 11000);

 ret = asix_sw_reset(dev, AX_SWRESET_IPRL, in_pm);
 if (ret < 0)
  goto out;

 msleep(160);

 ret = asix_sw_reset(dev, AX_SWRESET_CLEAR, in_pm);
 if (ret < 0)
  goto out;

 ret = asix_sw_reset(dev, AX_SWRESET_IPRL, in_pm);
 if (ret < 0)
  goto out;

 msleep(200);

 if (in_pm && (!asix_mdio_read_nopm(dev->net, dev->mii.phy_id,
        MII_PHYSID1))) {
  ret = -1;
  goto out;
 }

 ret = asix_read_cmd(dev, AX_CMD_STATMNGSTS_REG, 0,
       0, 1, &chipcode, in_pm);
 if (ret < 0)
  goto out;

 if ((chipcode & AX_CHIPCODE_MASK) == AX_AX88772B_CHIPCODE) {
  ret = asix_write_cmd(dev, AX_QCTCTRL, 0x8000, 0x8001,
         0, ((void*)0), in_pm);
  if (ret < 0) {
   netdev_dbg(dev->net, "Write BQ setting failed: %d\n",
       ret);
   goto out;
  }
 } else if ((chipcode & AX_CHIPCODE_MASK) == AX_AX88772A_CHIPCODE) {

  phy14h = asix_mdio_read_nopm(dev->net, dev->mii.phy_id,
          AX88772A_PHY14H);
  phy15h = asix_mdio_read_nopm(dev->net, dev->mii.phy_id,
          AX88772A_PHY15H);
  phy16h = asix_mdio_read_nopm(dev->net, dev->mii.phy_id,
          AX88772A_PHY16H);

  netdev_dbg(dev->net,
      "772a_hw_reset: MR20=0x%x MR21=0x%x MR22=0x%x\n",
      phy14h, phy15h, phy16h);


  if (phy14h != AX88772A_PHY14H_DEFAULT)
   asix_mdio_write_nopm(dev->net, dev->mii.phy_id,
          AX88772A_PHY14H,
          AX88772A_PHY14H_DEFAULT);
  if (phy15h != AX88772A_PHY15H_DEFAULT)
   asix_mdio_write_nopm(dev->net, dev->mii.phy_id,
          AX88772A_PHY15H,
          AX88772A_PHY15H_DEFAULT);
  if (phy16h != AX88772A_PHY16H_DEFAULT)
   asix_mdio_write_nopm(dev->net, dev->mii.phy_id,
          AX88772A_PHY16H,
          AX88772A_PHY16H_DEFAULT);
 }

 ret = asix_write_cmd(dev, AX_CMD_WRITE_IPG0,
    AX88772_IPG0_DEFAULT | AX88772_IPG1_DEFAULT,
    AX88772_IPG2_DEFAULT, 0, ((void*)0), in_pm);
 if (ret < 0) {
  netdev_dbg(dev->net, "Write IPG,IPG1,IPG2 failed: %d\n", ret);
  goto out;
 }


 memcpy(data->mac_addr, dev->net->dev_addr, ETH_ALEN);
 ret = asix_write_cmd(dev, AX_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
       data->mac_addr, in_pm);
 if (ret < 0)
  goto out;


 ret = asix_write_rx_ctl(dev, AX_DEFAULT_RX_CTL, in_pm);
 if (ret < 0)
  goto out;

 ret = asix_write_medium_mode(dev, AX88772_MEDIUM_DEFAULT, in_pm);
 if (ret < 0)
  return ret;


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
