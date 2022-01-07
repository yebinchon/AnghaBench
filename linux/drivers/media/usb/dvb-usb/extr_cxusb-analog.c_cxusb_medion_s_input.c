
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct dvb_usb_device {struct cxusb_medion_dev* priv; } ;
struct cxusb_medion_dev {unsigned int input; int norm; TYPE_1__* videodev; int cx25840; } ;
struct TYPE_5__ {int std; } ;
struct TYPE_6__ {TYPE_2__ input; int inputcfg; } ;
struct TYPE_4__ {int tvnorms; } ;


 unsigned int CXUSB_INPUT_CNT ;
 int EINVAL ;
 TYPE_3__* cxusb_medion_inputs ;
 int cxusb_medion_set_norm (struct cxusb_medion_dev*,int) ;
 int s_routing ;
 int v4l2_subdev_call (int ,int ,int ,int ,int ,int ) ;
 int video ;
 struct dvb_usb_device* video_drvdata (struct file*) ;

__attribute__((used)) static int cxusb_medion_s_input(struct file *file, void *fh,
    unsigned int i)
{
 struct dvb_usb_device *dvbdev = video_drvdata(file);
 struct cxusb_medion_dev *cxdev = dvbdev->priv;
 int ret;
 v4l2_std_id norm;

 if (i >= CXUSB_INPUT_CNT)
  return -EINVAL;

 ret = v4l2_subdev_call(cxdev->cx25840, video, s_routing,
          cxusb_medion_inputs[i].inputcfg, 0, 0);
 if (ret != 0)
  return ret;

 cxdev->input = i;
 cxdev->videodev->tvnorms = cxusb_medion_inputs[i].input.std;

 norm = cxdev->norm & cxusb_medion_inputs[i].input.std;
 if (norm == 0)
  norm = cxusb_medion_inputs[i].input.std;

 cxusb_medion_set_norm(cxdev, norm);

 return 0;
}
