
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct video_device {int vfl_type; } ;
struct file {struct cx231xx_fh* private_data; } ;
struct cx231xx_fh {int type; int fh; int vb_vidq; struct cx231xx* dev; } ;
struct cx231xx_buffer {int dummy; } ;
struct TYPE_6__ {int slock; } ;
struct TYPE_5__ {int slock; } ;
struct TYPE_4__ {scalar_t__ external_av; } ;
struct cx231xx {scalar_t__ users; int video_input; int lock; TYPE_3__ vbi_mode; TYPE_2__ video_mode; TYPE_1__ board; int dev; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int CX231XX_ANALOG_MODE ;
 int EBUSY ;
 int EINVAL ;
 int ENOMEM ;
 int ERESTARTSYS ;
 int GFP_KERNEL ;
 int INDEX_VANC ;
 int POLARIS_AVMODE_ANALOGT_TV ;
 int POLARIS_AVMODE_ENXTERNAL_AV ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_SEQ_TB ;



 int call_all (struct cx231xx*,int ,int ) ;
 int cx231xx_config_i2c (struct cx231xx*) ;
 int cx231xx_set_alt_setting (struct cx231xx*,int ,int ) ;
 scalar_t__ cx231xx_set_mode (struct cx231xx*,int ) ;
 int cx231xx_set_power_mode (struct cx231xx*,int ) ;
 int cx231xx_set_video_alternate (struct cx231xx*) ;
 int cx231xx_vbi_qops ;
 int cx231xx_video_qops ;
 int cx231xx_videodbg (char*,...) ;
 int dev_err (int ,char*) ;
 scalar_t__ errCode ;
 int kfree (struct cx231xx_fh*) ;
 struct cx231xx_fh* kzalloc (int,int ) ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int s_radio ;
 int tuner ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_init (int *,struct video_device*) ;
 int * v4l2_type_names ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct cx231xx* video_drvdata (struct file*) ;
 int videobuf_queue_vmalloc_init (int *,int *,int *,int *,int,int ,int,struct cx231xx_fh*,int *) ;

__attribute__((used)) static int cx231xx_v4l2_open(struct file *filp)
{
 int radio = 0;
 struct video_device *vdev = video_devdata(filp);
 struct cx231xx *dev = video_drvdata(filp);
 struct cx231xx_fh *fh;
 enum v4l2_buf_type fh_type = 0;

 switch (vdev->vfl_type) {
 case 130:
  fh_type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  break;
 case 128:
  fh_type = V4L2_BUF_TYPE_VBI_CAPTURE;
  break;
 case 129:
  radio = 1;
  break;
 default:
  return -EINVAL;
 }

 cx231xx_videodbg("open dev=%s type=%s users=%d\n",
    video_device_node_name(vdev), v4l2_type_names[fh_type],
    dev->users);
 fh = kzalloc(sizeof(struct cx231xx_fh), GFP_KERNEL);
 if (!fh)
  return -ENOMEM;
 if (mutex_lock_interruptible(&dev->lock)) {
  kfree(fh);
  return -ERESTARTSYS;
 }
 fh->dev = dev;
 fh->type = fh_type;
 filp->private_data = fh;
 v4l2_fh_init(&fh->fh, vdev);

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE && dev->users == 0) {

  if (dev->board.external_av)
   cx231xx_set_power_mode(dev,
     POLARIS_AVMODE_ENXTERNAL_AV);
  else
   cx231xx_set_power_mode(dev, POLARIS_AVMODE_ANALOGT_TV);






  cx231xx_set_video_alternate(dev);



  cx231xx_config_i2c(dev);


  dev->video_input = dev->video_input > 2 ? 2 : dev->video_input;

 }
 if (radio) {
  cx231xx_videodbg("video_open: setting radio device\n");



  call_all(dev, tuner, s_radio);
 }

 dev->users++;

 if (fh->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  videobuf_queue_vmalloc_init(&fh->vb_vidq, &cx231xx_video_qops,
         ((void*)0), &dev->video_mode.slock,
         fh->type, V4L2_FIELD_INTERLACED,
         sizeof(struct cx231xx_buffer),
         fh, &dev->lock);
 if (fh->type == V4L2_BUF_TYPE_VBI_CAPTURE) {


  cx231xx_set_alt_setting(dev, INDEX_VANC, 0);

  videobuf_queue_vmalloc_init(&fh->vb_vidq, &cx231xx_vbi_qops,
         ((void*)0), &dev->vbi_mode.slock,
         fh->type, V4L2_FIELD_SEQ_TB,
         sizeof(struct cx231xx_buffer),
         fh, &dev->lock);
 }
 mutex_unlock(&dev->lock);
 v4l2_fh_add(&fh->fh);

 return 0;
}
