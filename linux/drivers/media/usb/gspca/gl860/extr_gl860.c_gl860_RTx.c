
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct usb_device {int dummy; } ;
struct gspca_dev {void* usb_buf; struct usb_device* dev; } ;
typedef int s32 ;


 int gspca_err (struct gspca_dev*,char*,int,int) ;
 int memcpy (void*,void*,int) ;
 int msleep (int) ;
 int pr_err (char*,int,unsigned char,int ,int ,int ,int) ;
 int usb_control_msg (struct usb_device*,int ,int ,unsigned char,int ,int ,void*,int,int) ;
 int usb_rcvctrlpipe (struct usb_device*,int ) ;
 int usb_sndctrlpipe (struct usb_device*,int ) ;

int gl860_RTx(struct gspca_dev *gspca_dev,
  unsigned char pref, u32 req, u16 val, u16 index,
  s32 len, void *pdata)
{
 struct usb_device *udev = gspca_dev->dev;
 s32 r = 0;

 if (pref == 0x40) {
  if (len > 0) {
   memcpy(gspca_dev->usb_buf, pdata, len);
   r = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
     req, pref, val, index,
     gspca_dev->usb_buf,
     len, 400 + 200 * (len > 1));
  } else {
   r = usb_control_msg(udev, usb_sndctrlpipe(udev, 0),
     req, pref, val, index, ((void*)0), len, 400);
  }
 } else {
  if (len > 0) {
   r = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
     req, pref, val, index,
     gspca_dev->usb_buf,
     len, 400 + 200 * (len > 1));
   memcpy(pdata, gspca_dev->usb_buf, len);
  } else {
   r = usb_control_msg(udev, usb_rcvctrlpipe(udev, 0),
     req, pref, val, index, ((void*)0), len, 400);
  }
 }

 if (r < 0)
  pr_err("ctrl transfer failed %4d [p%02x r%d v%04x i%04x len%d]\n",
         r, pref, req, val, index, len);
 else if (len > 1 && r < len)
  gspca_err(gspca_dev, "short ctrl transfer %d/%d\n", r, len);

 msleep(1);

 return r;
}
