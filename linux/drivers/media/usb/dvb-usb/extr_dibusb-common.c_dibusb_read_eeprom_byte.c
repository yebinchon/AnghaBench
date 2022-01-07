
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dvb_usb_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dibusb_i2c_msg (struct dvb_usb_device*,int,int *,int,int *,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;

int dibusb_read_eeprom_byte(struct dvb_usb_device *d, u8 offs, u8 *val)
{
 u8 *buf;
 int rc;

 buf = kmalloc(2, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;

 buf[0] = offs;

 rc = dibusb_i2c_msg(d, 0x50, &buf[0], 1, &buf[1], 1);
 *val = buf[1];
 kfree(buf);

 return rc;
}
