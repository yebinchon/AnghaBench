
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct go7007_usb {int usbdev; TYPE_1__* board; } ;
struct go7007 {struct go7007_usb* hpi_context; } ;
struct TYPE_2__ {int flags; } ;


 int GO7007_USB_EZUSB ;
 int pr_debug (char*,int) ;
 int usb_bulk_msg (int ,int,int *,int,int*,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int go7007_usb_send_firmware(struct go7007 *go, u8 *data, int len)
{
 struct go7007_usb *usb = go->hpi_context;
 int transferred, pipe;
 int timeout = 500;

 pr_debug("DownloadBuffer sending %d bytes\n", len);

 if (usb->board->flags & GO7007_USB_EZUSB)
  pipe = usb_sndbulkpipe(usb->usbdev, 2);
 else
  pipe = usb_sndbulkpipe(usb->usbdev, 3);

 return usb_bulk_msg(usb->usbdev, pipe, data, len,
     &transferred, timeout);
}
