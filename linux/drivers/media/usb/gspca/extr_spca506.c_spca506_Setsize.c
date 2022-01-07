
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_device {int dummy; } ;
struct gspca_dev {struct usb_device* dev; } ;
typedef int __u16 ;


 int D_STREAM ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int reg_w (struct usb_device*,int,int,int) ;

__attribute__((used)) static void spca506_Setsize(struct gspca_dev *gspca_dev, __u16 code,
       __u16 xmult, __u16 ymult)
{
 struct usb_device *dev = gspca_dev->dev;

 gspca_dbg(gspca_dev, D_STREAM, "** SetSize **\n");
 reg_w(dev, 0x04, (0x18 | (code & 0x07)), 0x0000);

 reg_w(dev, 0x04, 0x41, 0x0001);
 reg_w(dev, 0x04, 0x00, 0x0002);

 reg_w(dev, 0x04, 0x00, 0x0003);


 reg_w(dev, 0x04, 0x00, 0x0004);

 reg_w(dev, 0x04, 0x01, 0x0005);

 reg_w(dev, 0x04, xmult, 0x0006);

 reg_w(dev, 0x04, ymult, 0x0007);

 reg_w(dev, 0x04, 0x00, 0x0008);

 reg_w(dev, 0x04, 0x00, 0x0009);

 reg_w(dev, 0x04, 0x21, 0x000a);

 reg_w(dev, 0x04, 0x00, 0x000b);
}
