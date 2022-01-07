
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef scalar_t__ u16 ;
struct mii_bus {struct lan78xx_net* priv; } ;
struct lan78xx_net {int intf; int phy_mutex; } ;


 int MII_ACC ;
 int MII_DATA ;
 int MII_WRITE ;
 int lan78xx_phy_wait_not_busy (struct lan78xx_net*) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,scalar_t__) ;
 scalar_t__ mii_access (int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int lan78xx_mdiobus_write(struct mii_bus *bus, int phy_id, int idx,
     u16 regval)
{
 struct lan78xx_net *dev = bus->priv;
 u32 val, addr;
 int ret;

 ret = usb_autopm_get_interface(dev->intf);
 if (ret < 0)
  return ret;

 mutex_lock(&dev->phy_mutex);


 ret = lan78xx_phy_wait_not_busy(dev);
 if (ret < 0)
  goto done;

 val = (u32)regval;
 ret = lan78xx_write_reg(dev, MII_DATA, val);


 addr = mii_access(phy_id, idx, MII_WRITE);
 ret = lan78xx_write_reg(dev, MII_ACC, addr);

 ret = lan78xx_phy_wait_not_busy(dev);
 if (ret < 0)
  goto done;

done:
 mutex_unlock(&dev->phy_mutex);
 usb_autopm_put_interface(dev->intf);
 return 0;
}
