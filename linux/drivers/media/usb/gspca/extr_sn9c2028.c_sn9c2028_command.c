
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct gspca_dev {int * usb_buf; int dev; } ;


 int D_USBO ;
 int USB_DIR_OUT ;
 int USB_RECIP_INTERFACE ;
 int USB_REQ_GET_CONFIGURATION ;
 int USB_TYPE_VENDOR ;
 int gspca_dbg (struct gspca_dev*,int ,char*,int ,int ,int ,int ,int ,int ) ;
 int memcpy (int *,int *,int) ;
 int pr_err (char*,int ,int) ;
 int usb_control_msg (int ,int ,int ,int,int,int ,int *,int,int) ;
 int usb_sndctrlpipe (int ,int ) ;

__attribute__((used)) static int sn9c2028_command(struct gspca_dev *gspca_dev, u8 *command)
{
 int rc;

 gspca_dbg(gspca_dev, D_USBO, "sending command %02x%02x%02x%02x%02x%02x\n",
    command[0], command[1], command[2],
    command[3], command[4], command[5]);

 memcpy(gspca_dev->usb_buf, command, 6);
 rc = usb_control_msg(gspca_dev->dev,
   usb_sndctrlpipe(gspca_dev->dev, 0),
   USB_REQ_GET_CONFIGURATION,
   USB_DIR_OUT | USB_TYPE_VENDOR | USB_RECIP_INTERFACE,
   2, 0, gspca_dev->usb_buf, 6, 500);
 if (rc < 0) {
  pr_err("command write [%02x] error %d\n",
         gspca_dev->usb_buf[0], rc);
  return rc;
 }

 return 0;
}
