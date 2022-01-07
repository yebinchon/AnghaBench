
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {char* usb_buf; int usb_err; int dev; } ;


 int D_STREAM ;
 int EIO ;
 int configure_encrypted (struct gspca_dev*) ;
 int gspca_dbg (struct gspca_dev*,int ,char*) ;
 int gspca_err (struct gspca_dev*,char*,...) ;
 int usb_control_msg (int ,int ,int,int,int,int,char*,int,int) ;
 int usb_rcvctrlpipe (int ,int ) ;
 int usb_sndctrlpipe (int ,int ) ;
 scalar_t__ val_reply (struct gspca_dev*,char*,int) ;

__attribute__((used)) static int configure(struct gspca_dev *gspca_dev)
{
 int rc;
 char *buff = gspca_dev->usb_buf;

 gspca_dbg(gspca_dev, D_STREAM, "configure()\n\n");
 rc = usb_control_msg(gspca_dev->dev, usb_rcvctrlpipe(gspca_dev->dev, 0),
        0x16, 0xC0, 0x0000, 0x0000, buff, 2, 500);
 if (val_reply(gspca_dev, buff, rc)) {
  gspca_err(gspca_dev, "failed key req\n");
  return -EIO;
 }
 rc = usb_control_msg(gspca_dev->dev, usb_sndctrlpipe(gspca_dev->dev, 0),
        0x01, 0x40, 0x0001, 0x000F, ((void*)0), 0, 500);
 if (rc < 0) {
  gspca_err(gspca_dev, "failed to replay packet 176 w/ rc %d\n",
     rc);
  return rc;
 }

 rc = usb_control_msg(gspca_dev->dev, usb_sndctrlpipe(gspca_dev->dev, 0),
        0x01, 0x40, 0x0000, 0x000F, ((void*)0), 0, 500);
 if (rc < 0) {
  gspca_err(gspca_dev, "failed to replay packet 178 w/ rc %d\n",
     rc);
  return rc;
 }

 rc = usb_control_msg(gspca_dev->dev, usb_sndctrlpipe(gspca_dev->dev, 0),
        0x01, 0x40, 0x0001, 0x000F, ((void*)0), 0, 500);
 if (rc < 0) {
  gspca_err(gspca_dev, "failed to replay packet 180 w/ rc %d\n",
     rc);
  return rc;
 }
 gspca_dev->usb_err = 0;
 configure_encrypted(gspca_dev);
 if (gspca_dev->usb_err)
  return gspca_dev->usb_err;


 rc = usb_control_msg(gspca_dev->dev, usb_sndctrlpipe(gspca_dev->dev, 0),
        0x01, 0x40, 0x0003, 0x000F, ((void*)0), 0, 500);
 if (rc < 0) {
  gspca_err(gspca_dev, "failed to replay final packet w/ rc %d\n",
     rc);
  return rc;
 }

 gspca_dbg(gspca_dev, D_STREAM, "Configure complete\n\n");
 return 0;
}
