
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct esd_usb2_msg {TYPE_2__ msg; } ;
struct esd_usb2 {int udev; } ;


 int usb_bulk_msg (int ,int ,struct esd_usb2_msg*,int,int*,int) ;
 int usb_sndbulkpipe (int ,int) ;

__attribute__((used)) static int esd_usb2_send_msg(struct esd_usb2 *dev, struct esd_usb2_msg *msg)
{
 int actual_length;

 return usb_bulk_msg(dev->udev,
       usb_sndbulkpipe(dev->udev, 2),
       msg,
       msg->msg.hdr.len << 2,
       &actual_length,
       1000);
}
