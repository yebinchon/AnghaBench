
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tm6000_core {int dummy; } ;


 int USB_DIR_IN ;
 int USB_TYPE_VENDOR ;
 int tm6000_read_write_usb (struct tm6000_core*,int,int,int ,int ,int*,int) ;

int tm6000_get_reg(struct tm6000_core *dev, u8 req, u16 value, u16 index)
{
 int rc;
 u8 buf[1];

 rc = tm6000_read_write_usb(dev, USB_DIR_IN | USB_TYPE_VENDOR, req,
     value, index, buf, 1);

 if (rc < 0)
  return rc;

 return *buf;
}
