
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mii_bus {struct lan78xx_net* priv; } ;
struct lan78xx_net {int intf; int phy_mutex; } ;


 int MII_ACC ;
 int MII_DATA ;
 int MII_READ ;
 int lan78xx_phy_wait_not_busy (struct lan78xx_net*) ;
 int lan78xx_read_reg (struct lan78xx_net*,int ,int*) ;
 int lan78xx_write_reg (struct lan78xx_net*,int ,int) ;
 int mii_access (int,int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int usb_autopm_get_interface (int ) ;
 int usb_autopm_put_interface (int ) ;

__attribute__((used)) static int lan78xx_mdiobus_read(struct mii_bus *bus, int phy_id, int idx)
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


 addr = mii_access(phy_id, idx, MII_READ);
 ret = lan78xx_write_reg(dev, MII_ACC, addr);

 ret = lan78xx_phy_wait_not_busy(dev);
 if (ret < 0)
  goto done;

 ret = lan78xx_read_reg(dev, MII_DATA, &val);

 ret = (int)(val & 0xFFFF);

done:
 mutex_unlock(&dev->phy_mutex);
 usb_autopm_put_interface(dev->intf);

 return ret;
}
