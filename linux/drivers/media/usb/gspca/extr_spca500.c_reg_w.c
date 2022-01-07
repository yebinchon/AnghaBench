
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dev; } ;
typedef int __u16 ;


 int D_USBO ;
 int USB_DIR_OUT ;
 int USB_RECIP_DEVICE ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ) ;
 int pr_err (char*,int) ;
 int usb_control_msg (int ,int ,int ,int,int ,int ,int *,int ,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int reg_w(struct gspca_dev *gspca_dev,
       __u16 req, __u16 index, __u16 value)
{
 int ret;

 gspca_dbg(gspca_dev, D_USBO, "reg write: [0x%02x] = 0x%02x\n",
    index, value);
 ret = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   req,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_DEVICE,
   value, index, ((void*)0), 0, 500);
 if (ret < 0)
  pr_err("reg write: error %d\n", ret);
 return ret;
}
