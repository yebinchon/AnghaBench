
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;


 int S2255_CONFIG_EP ;
 long usb_bulk_msg (struct usb_device*,int,unsigned char*,int,int*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int ) ;

__attribute__((used)) static int s2255_write_config(struct usb_device *udev, unsigned char *pbuf,
         int size)
{
 int pipe;
 int done;
 long retval = -1;
 if (udev) {
  pipe = usb_sndbulkpipe(udev, S2255_CONFIG_EP);
  retval = usb_bulk_msg(udev, pipe, pbuf, size, &done, 500);
 }
 return retval;
}
