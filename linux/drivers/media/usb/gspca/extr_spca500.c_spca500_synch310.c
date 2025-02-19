
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int alt; int iface; int dev; } ;


 int D_PACK ;
 int EBUSY ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ) ;
 int gspca_err (struct gspca_dev*,char*) ;
 int reg_r (struct gspca_dev*,int,int) ;
 int spca500_ping310 (struct gspca_dev*) ;
 scalar_t__ usb_set_interface (int ,int ,int ) ;

__attribute__((used)) static int spca500_synch310(struct gspca_dev *gspca_dev)
{
 if (usb_set_interface(gspca_dev->dev, gspca_dev->iface, 0) < 0) {
  gspca_err(gspca_dev, "Set packet size: set interface error\n");
  goto error;
 }
 spca500_ping310(gspca_dev);

 reg_r(gspca_dev, 0x0d00, 1);


 gspca_dbg(gspca_dev, D_PACK, "ClickSmart310 sync alt: %d\n",
    gspca_dev->alt);


 if (usb_set_interface(gspca_dev->dev,
    gspca_dev->iface,
    gspca_dev->alt) < 0) {
  gspca_err(gspca_dev, "Set packet size: set interface error\n");
  goto error;
 }
 return 0;
error:
 return -EBUSY;
}
