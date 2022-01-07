
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;


 int CONTROL_TIMEOUT_MS ;
 int ENODEV ;
 int REQUEST_READ ;
 int control_read (struct usbnet*,int ,int ,int,unsigned char*,int,int ) ;
 int netdev_dbg (struct net_device*,char*,int,int) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ch9200_mdio_read(struct net_device *netdev, int phy_id, int loc)
{
 struct usbnet *dev = netdev_priv(netdev);
 unsigned char buff[2];

 netdev_dbg(netdev, "ch9200_mdio_read phy_id:%02x loc:%02x\n",
     phy_id, loc);

 if (phy_id != 0)
  return -ENODEV;

 control_read(dev, REQUEST_READ, 0, loc * 2, buff, 0x02,
       CONTROL_TIMEOUT_MS);

 return (buff[0] | buff[1] << 8);
}
