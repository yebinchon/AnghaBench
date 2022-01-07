
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvaser_usb {TYPE_1__* bulk_in; int udev; } ;
struct TYPE_2__ {int bEndpointAddress; } ;


 int KVASER_USB_TIMEOUT ;
 int usb_bulk_msg (int ,int ,void*,int,int*,int ) ;
 int usb_rcvbulkpipe (int ,int ) ;

int kvaser_usb_recv_cmd(const struct kvaser_usb *dev, void *cmd, int len,
   int *actual_len)
{
 return usb_bulk_msg(dev->udev,
       usb_rcvbulkpipe(dev->udev,
         dev->bulk_in->bEndpointAddress),
       cmd, len, actual_len, KVASER_USB_TIMEOUT);
}
