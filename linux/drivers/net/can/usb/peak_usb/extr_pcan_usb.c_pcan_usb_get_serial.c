
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct peak_usb_device {int netdev; } ;
typedef int __le32 ;


 int PCAN_USB_CMD_ARGS_LEN ;
 int le32_to_cpu (int ) ;
 int memcpy (int *,int *,int) ;
 int netdev_err (int ,char*,int) ;
 int pcan_usb_wait_rsp (struct peak_usb_device*,int,int,int *) ;

__attribute__((used)) static int pcan_usb_get_serial(struct peak_usb_device *dev, u32 *serial_number)
{
 u8 args[PCAN_USB_CMD_ARGS_LEN];
 int err;

 err = pcan_usb_wait_rsp(dev, 6, 1, args);
 if (err) {
  netdev_err(dev->netdev, "getting serial failure: %d\n", err);
 } else if (serial_number) {
  __le32 tmp32;

  memcpy(&tmp32, args, 4);
  *serial_number = le32_to_cpu(tmp32);
 }

 return err;
}
