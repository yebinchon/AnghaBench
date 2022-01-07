
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct usbnet {int dummy; } ;
struct net_device {int dummy; } ;


 int NSR_LINKST ;
 int SR_NSR ;
 struct usbnet* netdev_priv (struct net_device*) ;
 int sr_read_reg (struct usbnet*,int ,int*) ;

__attribute__((used)) static u32 sr9700_get_link(struct net_device *netdev)
{
 struct usbnet *dev = netdev_priv(netdev);
 u8 value = 0;
 int rc = 0;


 sr_read_reg(dev, SR_NSR, &value);
 if (value & NSR_LINKST)
  rc = 1;

 return rc;
}
