
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct tm6000_core {int dummy; } ;


 int USB_DIR_OUT ;
 int USB_TYPE_VENDOR ;
 int tm6000_read_write_usb (struct tm6000_core*,int,int ,int ,int ,int *,int ) ;

int tm6000_set_reg(struct tm6000_core *dev, u8 req, u16 value, u16 index)
{
 return
  tm6000_read_write_usb(dev, USB_DIR_OUT | USB_TYPE_VENDOR,
          req, value, index, ((void*)0), 0);
}
