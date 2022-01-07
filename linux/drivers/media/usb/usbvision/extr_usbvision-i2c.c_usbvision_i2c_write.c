
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_usbvision {int dummy; } ;


 int EFAULT ;
 int usbvision_i2c_write_max4 (struct usb_usbvision*,unsigned char,char*,int) ;

__attribute__((used)) static int usbvision_i2c_write(struct usb_usbvision *usbvision, unsigned char addr, char *buf,
       short len)
{
 char *buf_ptr = buf;
 int retval;
 int wrcount = 0;
 int count;
 int max_len = 4;

 while (len > 0) {
  count = (len > max_len) ? max_len : len;
  retval = usbvision_i2c_write_max4(usbvision, addr, buf_ptr, count);
  if (retval > 0) {
   len -= count;
   buf_ptr += count;
   wrcount += count;
  } else
   return (retval < 0) ? retval : -EFAULT;
 }
 return wrcount;
}
