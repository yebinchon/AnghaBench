
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int dummy; } ;
struct i2c_adapter {int dummy; } ;


 int DBG_I2C ;
 int PDEBUG (int ,char*,...) ;
 scalar_t__ i2c_get_adapdata (struct i2c_adapter*) ;
 int udelay (int) ;
 int usbvision_i2c_read (struct usb_usbvision*,unsigned char,char*,int) ;

__attribute__((used)) static inline int try_read_address(struct i2c_adapter *i2c_adap,
       unsigned char addr, int retries)
{
 struct usb_usbvision *usbvision;
 int i, ret = -1;
 char buf[4];

 usbvision = (struct usb_usbvision *)i2c_get_adapdata(i2c_adap);
 for (i = 0; i <= retries; i++) {
  ret = (usbvision_i2c_read(usbvision, addr, buf, 1));
  if (ret == 1)
   break;
  udelay(5);
  if (i == retries)
   break;
  udelay(10);
 }
 if (i) {
  PDEBUG(DBG_I2C, "Needed %d retries for address %#2x", i, addr);
  PDEBUG(DBG_I2C, "Maybe there's no device at this address");
 }
 return ret;
}
