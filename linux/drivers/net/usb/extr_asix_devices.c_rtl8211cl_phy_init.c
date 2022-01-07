
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_id; } ;
struct usbnet {TYPE_1__ mii; int net; int data; } ;
struct asix_data {int ledmode; } ;


 int asix_mdio_read (int ,int ,int) ;
 int asix_mdio_write (int ,int ,int,int) ;
 int netdev_dbg (int ,char*) ;

__attribute__((used)) static int rtl8211cl_phy_init(struct usbnet *dev)
{
 struct asix_data *data = (struct asix_data *)&dev->data;

 netdev_dbg(dev->net, "rtl8211cl_phy_init()\n");

 asix_mdio_write (dev->net, dev->mii.phy_id, 0x1f, 0x0005);
 asix_mdio_write (dev->net, dev->mii.phy_id, 0x0c, 0);
 asix_mdio_write (dev->net, dev->mii.phy_id, 0x01,
  asix_mdio_read (dev->net, dev->mii.phy_id, 0x01) | 0x0080);
 asix_mdio_write (dev->net, dev->mii.phy_id, 0x1f, 0);

 if (data->ledmode == 12) {
  asix_mdio_write (dev->net, dev->mii.phy_id, 0x1f, 0x0002);
  asix_mdio_write (dev->net, dev->mii.phy_id, 0x1a, 0x00cb);
  asix_mdio_write (dev->net, dev->mii.phy_id, 0x1f, 0);
 }

 return 0;
}
