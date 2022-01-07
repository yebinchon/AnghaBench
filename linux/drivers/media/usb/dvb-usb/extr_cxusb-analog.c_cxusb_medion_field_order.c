
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
typedef scalar_t__ u32 ;
struct dvb_usb_device {TYPE_1__* udev; } ;
struct cxusb_medion_dev {scalar_t__ input; int cx25840; int norm; struct dvb_usb_device* dvbdev; } ;
struct TYPE_2__ {int dev; } ;


 int OPS ;
 scalar_t__ V4L2_FIELD_NONE ;
 scalar_t__ V4L2_FIELD_SEQ_TB ;
 scalar_t__ cxusb_medion_norm2field_order (int ) ;
 int cxusb_vprintk (struct dvb_usb_device*,int ,char*,unsigned int) ;
 int dev_warn (int *,char*) ;
 int g_std ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int video ;

__attribute__((used)) static u32 cxusb_medion_field_order(struct cxusb_medion_dev *cxdev)
{
 struct dvb_usb_device *dvbdev = cxdev->dvbdev;
 u32 field;
 int ret;
 v4l2_std_id norm;


 if (cxdev->input == 0)
  return V4L2_FIELD_SEQ_TB;

 field = cxusb_medion_norm2field_order(cxdev->norm);
 if (field != V4L2_FIELD_NONE)
  return field;

 ret = v4l2_subdev_call(cxdev->cx25840, video, g_std, &norm);
 if (ret != 0) {
  cxusb_vprintk(dvbdev, OPS,
         "cannot get current standard for input %u\n",
         (unsigned int)cxdev->input);
 } else {
  field = cxusb_medion_norm2field_order(norm);
  if (field != V4L2_FIELD_NONE)
   return field;
 }

 dev_warn(&dvbdev->udev->dev,
   "cannot determine field order for the current standard setup and received signal, using TB\n");
 return V4L2_FIELD_SEQ_TB;
}
