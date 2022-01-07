
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int phy_id; } ;
struct usbnet {int net; TYPE_1__ mii; int data; } ;
struct asix_data {scalar_t__ ledmode; } ;


 int MARVELL_CTRL_RXDELAY ;
 int MARVELL_CTRL_TXDELAY ;
 int MII_MARVELL_CTRL ;
 int MII_MARVELL_LED_CTRL ;
 int MII_MARVELL_STATUS ;
 int asix_mdio_read (int ,int ,int ) ;
 int asix_mdio_write (int ,int ,int ,int) ;
 int netdev_dbg (int ,char*,...) ;

__attribute__((used)) static int marvell_phy_init(struct usbnet *dev)
{
 struct asix_data *data = (struct asix_data *)&dev->data;
 u16 reg;

 netdev_dbg(dev->net, "marvell_phy_init()\n");

 reg = asix_mdio_read(dev->net, dev->mii.phy_id, MII_MARVELL_STATUS);
 netdev_dbg(dev->net, "MII_MARVELL_STATUS = 0x%04x\n", reg);

 asix_mdio_write(dev->net, dev->mii.phy_id, MII_MARVELL_CTRL,
   MARVELL_CTRL_RXDELAY | MARVELL_CTRL_TXDELAY);

 if (data->ledmode) {
  reg = asix_mdio_read(dev->net, dev->mii.phy_id,
   MII_MARVELL_LED_CTRL);
  netdev_dbg(dev->net, "MII_MARVELL_LED_CTRL (1) = 0x%04x\n", reg);

  reg &= 0xf8ff;
  reg |= (1 + 0x0100);
  asix_mdio_write(dev->net, dev->mii.phy_id,
   MII_MARVELL_LED_CTRL, reg);

  reg = asix_mdio_read(dev->net, dev->mii.phy_id,
   MII_MARVELL_LED_CTRL);
  netdev_dbg(dev->net, "MII_MARVELL_LED_CTRL (2) = 0x%04x\n", reg);
  reg &= 0xfc0f;
 }

 return 0;
}
