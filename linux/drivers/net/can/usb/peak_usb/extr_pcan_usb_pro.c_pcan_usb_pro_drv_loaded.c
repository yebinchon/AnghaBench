
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct peak_usb_device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int PCAN_USBPRO_FCT_DRVLD ;
 int PCAN_USBPRO_FCT_DRVLD_REQ_LEN ;
 int PCAN_USBPRO_REQ_FCT ;
 int kfree (int*) ;
 int* kzalloc (int ,int ) ;
 int pcan_usb_pro_send_req (struct peak_usb_device*,int ,int ,int*,int ) ;

__attribute__((used)) static int pcan_usb_pro_drv_loaded(struct peak_usb_device *dev, int loaded)
{
 u8 *buffer;
 int err;

 buffer = kzalloc(PCAN_USBPRO_FCT_DRVLD_REQ_LEN, GFP_KERNEL);
 if (!buffer)
  return -ENOMEM;

 buffer[0] = 0;
 buffer[1] = !!loaded;

 err = pcan_usb_pro_send_req(dev, PCAN_USBPRO_REQ_FCT,
        PCAN_USBPRO_FCT_DRVLD, buffer,
        PCAN_USBPRO_FCT_DRVLD_REQ_LEN);
 kfree(buffer);

 return err;
}
