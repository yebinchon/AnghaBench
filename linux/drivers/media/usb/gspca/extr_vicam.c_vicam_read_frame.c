
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int width; int height; } ;
struct gspca_dev {int* usb_buf; int dev; int usb_lock; TYPE_1__ pixfmt; int gain; int exposure; } ;
typedef int s32 ;


 int EIO ;
 int memset (int*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,int,int,int) ;
 int usb_bulk_msg (int ,int ,int*,int,int*,int) ;
 int usb_rcvbulkpipe (int ,int) ;
 int v4l2_ctrl_g_ctrl (int ) ;
 int vicam_control_msg (struct gspca_dev*,int,int,int ,int*,int) ;

__attribute__((used)) static int vicam_read_frame(struct gspca_dev *gspca_dev, u8 *data, int size)
{
 int ret, unscaled_height, act_len = 0;
 u8 *req_data = gspca_dev->usb_buf;
 s32 expo = v4l2_ctrl_g_ctrl(gspca_dev->exposure);
 s32 gain = v4l2_ctrl_g_ctrl(gspca_dev->gain);

 memset(req_data, 0, 16);
 req_data[0] = gain;
 if (gspca_dev->pixfmt.width == 256)
  req_data[1] |= 0x01;
 if (gspca_dev->pixfmt.height <= 122) {
  req_data[1] |= 0x10;
  unscaled_height = gspca_dev->pixfmt.height * 2;
 } else
  unscaled_height = gspca_dev->pixfmt.height;
 req_data[2] = 0x90;
 if (unscaled_height <= 200)
  req_data[3] = 0x06;
 else if (unscaled_height <= 242)
  req_data[3] = 0x07;
 else
  req_data[3] = 0x08;

 if (expo < 256) {

  req_data[4] = 255 - expo;
  req_data[5] = 0x00;
  req_data[6] = 0x00;
  req_data[7] = 0x01;
 } else {

  req_data[4] = 0x00;
  req_data[5] = 0x00;
  req_data[6] = expo & 0xFF;
  req_data[7] = expo >> 8;
 }
 req_data[8] = ((244 - unscaled_height) / 2) & ~0x01;


 mutex_lock(&gspca_dev->usb_lock);
 ret = vicam_control_msg(gspca_dev, 0x51, 0x80, 0, req_data, 16);
 mutex_unlock(&gspca_dev->usb_lock);
 if (ret < 0)
  return ret;

 ret = usb_bulk_msg(gspca_dev->dev,
      usb_rcvbulkpipe(gspca_dev->dev, 0x81),
      data, size, &act_len, 10000);

 if (ret < 0 || act_len != size) {
  pr_err("bulk read fail (%d) len %d/%d\n",
         ret, act_len, size);
  return -EIO;
 }
 return 0;
}
