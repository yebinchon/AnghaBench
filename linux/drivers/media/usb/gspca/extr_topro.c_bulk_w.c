
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usb_device {int dummy; } ;
struct gspca_dev {int usb_err; int * usb_buf; struct usb_device* dev; } ;


 int BULK_OUT_SIZE ;
 int memcpy (int *,int const*,int) ;
 int pr_err (char*,int,int ) ;
 int usb_bulk_msg (struct usb_device*,int ,int *,int,int*,int) ;
 int usb_sndbulkpipe (struct usb_device*,int) ;

__attribute__((used)) static void bulk_w(struct gspca_dev *gspca_dev,
    u8 tag,
    const u8 *data,
    int length)
{
 struct usb_device *dev = gspca_dev->dev;
 int count, actual_count, ret;

 if (gspca_dev->usb_err < 0)
  return;
 for (;;) {
  count = length > BULK_OUT_SIZE - 1
    ? BULK_OUT_SIZE - 1 : length;
  gspca_dev->usb_buf[0] = tag;
  memcpy(&gspca_dev->usb_buf[1], data, count);
  ret = usb_bulk_msg(dev,
       usb_sndbulkpipe(dev, 3),
       gspca_dev->usb_buf, count + 1,
       &actual_count, 500);
  if (ret < 0) {
   pr_err("bulk write error %d tag=%02x\n",
    ret, tag);
   gspca_dev->usb_err = ret;
   return;
  }
  length -= count;
  if (length <= 0)
   break;
  data += count;
 }
}
