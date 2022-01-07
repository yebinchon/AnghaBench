
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct esd_usb2_msg {int dummy; } ;
struct esd_usb2 {int udev; } ;


 int usb_bulk_msg (int ,int ,struct esd_usb2_msg*,int,int*,int) ;
 int usb_rcvbulkpipe (int ,int) ;

__attribute__((used)) static int esd_usb2_wait_msg(struct esd_usb2 *dev,
        struct esd_usb2_msg *msg)
{
 int actual_length;

 return usb_bulk_msg(dev->udev,
       usb_rcvbulkpipe(dev->udev, 1),
       msg,
       sizeof(*msg),
       &actual_length,
       1000);
}
