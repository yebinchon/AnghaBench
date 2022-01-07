
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct peak_usb_device {int netdev; } ;


 int PCAN_USB_CMD_ARGS_LEN ;
 int netdev_err (int ,char*,int) ;
 int pcan_usb_wait_rsp (struct peak_usb_device*,int,int,int *) ;

__attribute__((used)) static int pcan_usb_get_device_id(struct peak_usb_device *dev, u32 *device_id)
{
 u8 args[PCAN_USB_CMD_ARGS_LEN];
 int err;

 err = pcan_usb_wait_rsp(dev, 4, 1, args);
 if (err)
  netdev_err(dev->netdev, "getting device id failure: %d\n", err);
 else if (device_id)
  *device_id = args[0];

 return err;
}
