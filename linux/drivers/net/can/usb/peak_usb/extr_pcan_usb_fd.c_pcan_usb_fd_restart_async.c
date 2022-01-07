
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct urb {int dummy; } ;
struct pucan_command {int dummy; } ;
struct peak_usb_device {int udev; } ;


 int GFP_ATOMIC ;
 int PCAN_USBPRO_EP_CMDOUT ;
 int memset (int *,int,int) ;
 int pcan_usb_fd_build_restart_cmd (struct peak_usb_device*,int *) ;
 int pcan_usb_pro_restart_complete ;
 int usb_fill_bulk_urb (struct urb*,int ,int ,int *,int,int ,struct peak_usb_device*) ;
 int usb_sndbulkpipe (int ,int ) ;
 int usb_submit_urb (struct urb*,int ) ;

__attribute__((used)) static int pcan_usb_fd_restart_async(struct peak_usb_device *dev,
         struct urb *urb, u8 *buf)
{
 u8 *pc = buf;




 pc += pcan_usb_fd_build_restart_cmd(dev, pc);


 memset(pc, 0xff, sizeof(struct pucan_command));
 pc += sizeof(struct pucan_command);


 usb_fill_bulk_urb(urb, dev->udev,
     usb_sndbulkpipe(dev->udev, PCAN_USBPRO_EP_CMDOUT),
     buf, pc - buf,
     pcan_usb_pro_restart_complete, dev);


 return usb_submit_urb(urb, GFP_ATOMIC);
}
