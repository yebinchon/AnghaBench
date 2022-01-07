
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int tuner_analog_msg_data ;
typedef int subfmt ;
struct TYPE_6__ {int height; int width; int colorspace; int field; int code; } ;
struct v4l2_subdev_format {TYPE_3__ format; int which; } ;
struct i2c_msg {int addr; int* buf; int len; int flags; } ;
struct dvb_usb_device {TYPE_2__* udev; int i2c_adap; struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {int input; int height; int width; int cx25840; int norm; int tuner; int tda9887; TYPE_1__* videodev; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int tvnorms; } ;


 int * ARRAY_SIZE (struct v4l2_subdev_format*) ;
 int CX25840_COMPOSITE1 ;
 int MEDIA_BUS_FMT_FIXED ;
 int V4L2_COLORSPACE_SMPTE170M ;
 int V4L2_FIELD_SEQ_TB ;
 int V4L2_STD_ALL ;
 int V4L2_STD_PAL ;
 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int core ;
 struct v4l2_subdev_format* cxusub_medion_pin_config ;
 int dev_warn (int *,char*,int) ;
 int i2c_transfer (int *,struct i2c_msg*,int) ;
 int memset (struct v4l2_subdev_format*,int ,int) ;
 int pad ;
 int reset ;
 int s_io_pin_config ;
 int s_routing ;
 int s_std ;
 int set_fmt ;
 int v4l2_subdev_call (int ,int ,int ,int *,...) ;
 int video ;

int cxusb_medion_analog_init(struct dvb_usb_device *dvbdev)
{
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 u8 tuner_analog_msg_data[] = { 0x9c, 0x60, 0x85, 0x54 };
 struct i2c_msg tuner_analog_msg = { .addr = 0x61, .flags = 0,
         .buf = tuner_analog_msg_data,
         .len =
         sizeof(tuner_analog_msg_data) };
 struct v4l2_subdev_format subfmt;
 int ret;


 ret = i2c_transfer(&dvbdev->i2c_adap, &tuner_analog_msg, 1);
 if (ret != 1)
  dev_warn(&dvbdev->udev->dev,
    "tuner analog switch failed (%d)\n", ret);





 ret = v4l2_subdev_call(cxdev->cx25840, core, reset, 0);
 if (ret != 0)
  dev_warn(&dvbdev->udev->dev,
    "cx25840 reset failed (%d)\n", ret);

 ret = v4l2_subdev_call(cxdev->cx25840, video, s_routing,
          CX25840_COMPOSITE1, 0, 0);
 if (ret != 0)
  dev_warn(&dvbdev->udev->dev,
    "cx25840 initial input setting failed (%d)\n", ret);


 cxdev->input = 1;
 cxdev->videodev->tvnorms = V4L2_STD_ALL;
 cxdev->norm = V4L2_STD_PAL;



 ret = v4l2_subdev_call(cxdev->cx25840, core, s_io_pin_config,
          ARRAY_SIZE(cxusub_medion_pin_config),
          cxusub_medion_pin_config);
 if (ret != 0)
  dev_warn(&dvbdev->udev->dev,
    "cx25840 pin config failed (%d)\n", ret);


 v4l2_subdev_call(cxdev->tda9887, video, s_std, cxdev->norm);
 v4l2_subdev_call(cxdev->tuner, video, s_std, cxdev->norm);
 v4l2_subdev_call(cxdev->cx25840, video, s_std, cxdev->norm);

 memset(&subfmt, 0, sizeof(subfmt));
 subfmt.which = V4L2_SUBDEV_FORMAT_ACTIVE;
 subfmt.format.width = cxdev->width;
 subfmt.format.height = cxdev->height;
 subfmt.format.code = MEDIA_BUS_FMT_FIXED;
 subfmt.format.field = V4L2_FIELD_SEQ_TB;
 subfmt.format.colorspace = V4L2_COLORSPACE_SMPTE170M;

 ret = v4l2_subdev_call(cxdev->cx25840, pad, set_fmt, ((void*)0), &subfmt);
 if (ret != 0)
  dev_warn(&dvbdev->udev->dev,
    "cx25840 format set failed (%d)\n", ret);

 if (ret == 0) {
  cxdev->width = subfmt.format.width;
  cxdev->height = subfmt.format.height;
 }

 return 0;
}
