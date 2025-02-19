
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_5__ {int phy_id; } ;
struct usbnet {TYPE_1__* net; TYPE_2__ mii; int data; } ;
struct asix_data {int phymode; int ledmode; int * mac_addr; } ;
typedef scalar_t__ __le16 ;
struct TYPE_4__ {int dev_addr; } ;


 int ADVERTISE_1000FULL ;
 int ADVERTISE_ALL ;
 int ADVERTISE_CSMA ;
 int ADVERTISE_PAUSE_CAP ;
 int AX88178_MEDIUM_DEFAULT ;
 int AX_CMD_READ_EEPROM ;
 int AX_CMD_READ_GPIOS ;
 int AX_CMD_SW_PHY_SELECT ;
 int AX_CMD_WRITE_DISABLE ;
 int AX_CMD_WRITE_ENABLE ;
 int AX_CMD_WRITE_NODE_ID ;
 int AX_DEFAULT_RX_CTL ;
 int AX_GPIO_GPO1EN ;
 int AX_GPIO_GPO_1 ;
 int AX_GPIO_RSE ;
 int AX_SWRESET_IPPD ;
 int AX_SWRESET_PRL ;
 int BMCR_ANENABLE ;
 int BMCR_RESET ;
 int ETH_ALEN ;
 int MII_ADVERTISE ;
 int MII_CTRL1000 ;
 int PHY_MODE_MARVELL ;
 int PHY_MODE_RTL8211CL ;
 scalar_t__ asix_get_phyid (struct usbnet*) ;
 int asix_mdio_write (TYPE_1__*,int ,int ,int) ;
 int asix_phy_reset (struct usbnet*,int) ;
 int asix_read_cmd (struct usbnet*,int ,int,int ,int,scalar_t__*,int ) ;
 int asix_sw_reset (struct usbnet*,int,int ) ;
 int asix_write_cmd (struct usbnet*,int ,int ,int ,int ,int *,int ) ;
 int asix_write_gpio (struct usbnet*,int,int,int ) ;
 int asix_write_medium_mode (struct usbnet*,int ,int ) ;
 int asix_write_rx_ctl (struct usbnet*,int ,int ) ;
 scalar_t__ cpu_to_le16 (int) ;
 int le16_to_cpu (scalar_t__) ;
 int marvell_phy_init (struct usbnet*) ;
 int memcpy (int *,int ,int ) ;
 int mii_nway_restart (TYPE_2__*) ;
 int msleep (int) ;
 int netdev_dbg (TYPE_1__*,char*,...) ;
 int rtl8211cl_phy_init (struct usbnet*) ;

__attribute__((used)) static int ax88178_reset(struct usbnet *dev)
{
 struct asix_data *data = (struct asix_data *)&dev->data;
 int ret;
 __le16 eeprom;
 u8 status;
 int gpio0 = 0;
 u32 phyid;

 asix_read_cmd(dev, AX_CMD_READ_GPIOS, 0, 0, 1, &status, 0);
 netdev_dbg(dev->net, "GPIO Status: 0x%04x\n", status);

 asix_write_cmd(dev, AX_CMD_WRITE_ENABLE, 0, 0, 0, ((void*)0), 0);
 asix_read_cmd(dev, AX_CMD_READ_EEPROM, 0x0017, 0, 2, &eeprom, 0);
 asix_write_cmd(dev, AX_CMD_WRITE_DISABLE, 0, 0, 0, ((void*)0), 0);

 netdev_dbg(dev->net, "EEPROM index 0x17 is 0x%04x\n", eeprom);

 if (eeprom == cpu_to_le16(0xffff)) {
  data->phymode = PHY_MODE_MARVELL;
  data->ledmode = 0;
  gpio0 = 1;
 } else {
  data->phymode = le16_to_cpu(eeprom) & 0x7F;
  data->ledmode = le16_to_cpu(eeprom) >> 8;
  gpio0 = (le16_to_cpu(eeprom) & 0x80) ? 0 : 1;
 }
 netdev_dbg(dev->net, "GPIO0: %d, PhyMode: %d\n", gpio0, data->phymode);


 asix_write_gpio(dev, AX_GPIO_RSE | AX_GPIO_GPO_1 |
   AX_GPIO_GPO1EN, 40, 0);
 if ((le16_to_cpu(eeprom) >> 8) != 1) {
  asix_write_gpio(dev, 0x003c, 30, 0);
  asix_write_gpio(dev, 0x001c, 300, 0);
  asix_write_gpio(dev, 0x003c, 30, 0);
 } else {
  netdev_dbg(dev->net, "gpio phymode == 1 path\n");
  asix_write_gpio(dev, AX_GPIO_GPO1EN, 30, 0);
  asix_write_gpio(dev, AX_GPIO_GPO1EN | AX_GPIO_GPO_1, 30, 0);
 }


 phyid = asix_get_phyid(dev);
 netdev_dbg(dev->net, "PHYID=0x%08x\n", phyid);


 asix_write_cmd(dev, AX_CMD_SW_PHY_SELECT, 0, 0, 0, ((void*)0), 0);

 asix_sw_reset(dev, 0, 0);
 msleep(150);

 asix_sw_reset(dev, AX_SWRESET_PRL | AX_SWRESET_IPPD, 0);
 msleep(150);

 asix_write_rx_ctl(dev, 0, 0);

 if (data->phymode == PHY_MODE_MARVELL) {
  marvell_phy_init(dev);
  msleep(60);
 } else if (data->phymode == PHY_MODE_RTL8211CL)
  rtl8211cl_phy_init(dev);

 asix_phy_reset(dev, BMCR_RESET | BMCR_ANENABLE);
 asix_mdio_write(dev->net, dev->mii.phy_id, MII_ADVERTISE,
   ADVERTISE_ALL | ADVERTISE_CSMA | ADVERTISE_PAUSE_CAP);
 asix_mdio_write(dev->net, dev->mii.phy_id, MII_CTRL1000,
   ADVERTISE_1000FULL);

 asix_write_medium_mode(dev, AX88178_MEDIUM_DEFAULT, 0);
 mii_nway_restart(&dev->mii);


 memcpy(data->mac_addr, dev->net->dev_addr, ETH_ALEN);
 ret = asix_write_cmd(dev, AX_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
       data->mac_addr, 0);
 if (ret < 0)
  return ret;

 ret = asix_write_rx_ctl(dev, AX_DEFAULT_RX_CTL, 0);
 if (ret < 0)
  return ret;

 return 0;
}
