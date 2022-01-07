
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct redrat3_dev {int dev; int udev; } ;
typedef int __be32 ;


 int GFP_KERNEL ;
 int HZ ;
 int MS_TO_US (int) ;
 int RR3_GET_IR_PARAM ;
 int RR3_IR_IO_SIG_TIMEOUT ;
 int USB_DIR_IN ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int be32_to_cpup (int *) ;
 int dev_dbg (int ,char*,int) ;
 int dev_warn (int ,char*) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 int redrat3_len_to_us (int ) ;
 int usb_control_msg (int ,int,int ,int,int ,int ,int *,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;

__attribute__((used)) static u32 redrat3_get_timeout(struct redrat3_dev *rr3)
{
 __be32 *tmp;
 u32 timeout = MS_TO_US(150);
 int len, ret, pipe;

 len = sizeof(*tmp);
 tmp = kzalloc(len, GFP_KERNEL);
 if (!tmp)
  return timeout;

 pipe = usb_rcvctrlpipe(rr3->udev, 0);
 ret = usb_control_msg(rr3->udev, pipe, RR3_GET_IR_PARAM,
         USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_IN,
         RR3_IR_IO_SIG_TIMEOUT, 0, tmp, len, HZ * 5);
 if (ret != len)
  dev_warn(rr3->dev, "Failed to read timeout from hardware\n");
 else {
  timeout = redrat3_len_to_us(be32_to_cpup(tmp));

  dev_dbg(rr3->dev, "Got timeout of %d ms\n", timeout / 1000);
 }

 kfree(tmp);

 return timeout;
}
