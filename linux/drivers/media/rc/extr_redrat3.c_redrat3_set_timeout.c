
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct redrat3_dev {struct device* dev; struct usb_device* udev; } ;
struct rc_dev {struct redrat3_dev* priv; } ;
struct device {int dummy; } ;
typedef int __be32 ;


 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int HZ ;
 int RR3_IR_IO_SIG_TIMEOUT ;
 int RR3_SET_IR_PARAM ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int be32_to_cpu (int ) ;
 int cpu_to_be32 (int ) ;
 int dev_dbg (struct device*,char*,int ,int) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int redrat3_us_to_len (unsigned int) ;
 int usb_control_msg (struct usb_device*,int ,int ,int,int ,int ,int *,int,int) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

__attribute__((used)) static int redrat3_set_timeout(struct rc_dev *rc_dev, unsigned int timeoutns)
{
 struct redrat3_dev *rr3 = rc_dev->priv;
 struct usb_device *udev = rr3->udev;
 struct device *dev = rr3->dev;
 __be32 *timeout;
 int ret;

 timeout = kmalloc(sizeof(*timeout), GFP_KERNEL);
 if (!timeout)
  return -ENOMEM;

 *timeout = cpu_to_be32(redrat3_us_to_len(timeoutns / 1000));
 ret = usb_control_msg(udev, usb_sndctrlpipe(udev, 0), RR3_SET_IR_PARAM,
       USB_TYPE_VENDOR | USB_RECIP_DEVICE | USB_DIR_OUT,
       RR3_IR_IO_SIG_TIMEOUT, 0, timeout, sizeof(*timeout),
       HZ * 25);
 dev_dbg(dev, "set ir parm timeout %d ret 0x%02x\n",
      be32_to_cpu(*timeout), ret);

 if (ret == sizeof(*timeout))
  ret = 0;
 else if (ret >= 0)
  ret = -EIO;

 kfree(timeout);

 return ret;
}
