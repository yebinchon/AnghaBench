
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct esd_usb2 {int version; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,int,int,int) ;
 struct usb_interface* to_usb_interface (struct device*) ;
 struct esd_usb2* usb_get_intfdata (struct usb_interface*) ;

__attribute__((used)) static ssize_t show_firmware(struct device *d,
        struct device_attribute *attr, char *buf)
{
 struct usb_interface *intf = to_usb_interface(d);
 struct esd_usb2 *dev = usb_get_intfdata(intf);

 return sprintf(buf, "%d.%d.%d\n",
         (dev->version >> 12) & 0xf,
         (dev->version >> 8) & 0xf,
         dev->version & 0xff);
}
