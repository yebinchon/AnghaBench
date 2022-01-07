
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {scalar_t__ actual_length; int transfer_buffer; } ;
struct peak_usb_device {int netdev; } ;


 int EINVAL ;
 scalar_t__ PCAN_USB_MSG_HEADER_LEN ;
 int netdev_err (int ,char*,scalar_t__) ;
 int pcan_usb_decode_msg (struct peak_usb_device*,int ,scalar_t__) ;

__attribute__((used)) static int pcan_usb_decode_buf(struct peak_usb_device *dev, struct urb *urb)
{
 int err = 0;

 if (urb->actual_length > PCAN_USB_MSG_HEADER_LEN) {
  err = pcan_usb_decode_msg(dev, urb->transfer_buffer,
   urb->actual_length);

 } else if (urb->actual_length > 0) {
  netdev_err(dev->netdev, "usb message length error (%u)\n",
   urb->actual_length);
  err = -EINVAL;
 }

 return err;
}
