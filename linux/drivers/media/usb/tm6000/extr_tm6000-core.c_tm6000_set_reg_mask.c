
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tm6000_core {int dummy; } ;


 int USB_DIR_IN ;
 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int tm6000_read_write_usb (struct tm6000_core*,int,int,int,int,int*,int) ;

int tm6000_set_reg_mask(struct tm6000_core *dev, u8 req, u16 value,
      u16 index, u16 mask)
{
 int rc;
 u8 buf[1];
 u8 new_index;

 rc = tm6000_read_write_usb(dev, USB_DIR_IN | USB_TYPE_VENDOR, req,
     value, 0, buf, 1);

 if (rc < 0)
  return rc;

 new_index = (buf[0] & ~mask) | (index & mask);

 if (new_index == buf[0])
  return 0;

 return tm6000_read_write_usb(dev, USB_DIR_OUT | USB_TYPE_VENDOR,
          req, value, new_index, ((void*)0), 0);
}
