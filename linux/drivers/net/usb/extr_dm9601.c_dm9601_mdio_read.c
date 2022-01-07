
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int net; } ;
struct net_device {int dummy; } ;
typedef int __le16 ;


 int dm_read_shared_word (struct usbnet*,int,int,int *) ;
 int le16_to_cpu (int ) ;
 int netdev_dbg (int ,char*,...) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dm9601_mdio_read(struct net_device *netdev, int phy_id, int loc)
{
 struct usbnet *dev = netdev_priv(netdev);

 __le16 res;

 if (phy_id) {
  netdev_dbg(dev->net, "Only internal phy supported\n");
  return 0;
 }

 dm_read_shared_word(dev, 1, loc, &res);

 netdev_dbg(dev->net,
     "dm9601_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\n",
     phy_id, loc, le16_to_cpu(res));

 return le16_to_cpu(res);
}
