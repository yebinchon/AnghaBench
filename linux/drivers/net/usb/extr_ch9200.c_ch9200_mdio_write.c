
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;


 int CONTROL_TIMEOUT_MS ;
 int REQUEST_WRITE ;
 int control_write (struct usbnet*,int ,int ,int,unsigned char*,int,int ) ;
 int netdev_dbg (struct net_device*,char*,int,int) ;
 struct usbnet* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ch9200_mdio_write(struct net_device *netdev,
         int phy_id, int loc, int val)
{
 struct usbnet *dev = netdev_priv(netdev);
 unsigned char buff[2];

 netdev_dbg(netdev, "ch9200_mdio_write() phy_id=%02x loc:%02x\n",
     phy_id, loc);

 if (phy_id != 0)
  return;

 buff[0] = (unsigned char)val;
 buff[1] = (unsigned char)(val >> 8);

 control_write(dev, REQUEST_WRITE, 0, loc * 2, buff, 0x02,
        CONTROL_TIMEOUT_MS);
}
