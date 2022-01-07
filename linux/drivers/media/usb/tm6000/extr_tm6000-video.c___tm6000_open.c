
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int vfl_type; } ;
struct tm6000_fh {int radio; int type; int fh; int vb_vidq; int height; int width; int fmt; struct tm6000_core* dev; } ;
struct TYPE_3__ {int active; int queued; } ;
struct tm6000_core {int radio; int v4l2_dev; int lock; int slock; int mode; TYPE_1__ vidq; int height; int width; int fourcc; int users; } ;
struct tm6000_buffer {int dummy; } ;
struct file {struct tm6000_fh* private_data; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;
struct TYPE_4__ {int fourcc; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int TM6000_MODE_ANALOG ;
 int V4L2_BUF_TYPE_VBI_CAPTURE ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_DEBUG_OPEN ;
 int V4L2_FIELD_INTERLACED ;



 int dprintk (struct tm6000_core*,int ,char*,...) ;
 TYPE_2__* format ;
 int format_by_fourcc (int ) ;
 int kfree (struct tm6000_fh*) ;
 struct tm6000_fh* kzalloc (int,int ) ;
 int list_empty (int *) ;
 int s_radio ;
 int tm6000_get_std_res (struct tm6000_core*) ;
 int tm6000_init_analog_mode (struct tm6000_core*) ;
 int tm6000_prepare_isoc (struct tm6000_core*) ;
 int tm6000_set_audio_rinput (struct tm6000_core*) ;
 int tm6000_start_thread (struct tm6000_core*) ;
 int tm6000_video_qops ;
 int tuner ;
 int v4l2_device_call_all (int *,int ,int ,int ) ;
 int v4l2_fh_add (int *) ;
 int v4l2_fh_exit (int *) ;
 int v4l2_fh_init (int *,struct video_device*) ;
 int * v4l2_type_names ;
 struct video_device* video_devdata (struct file*) ;
 int video_device_node_name (struct video_device*) ;
 struct tm6000_core* video_drvdata (struct file*) ;
 int videobuf_queue_vmalloc_init (int *,int *,int *,int *,int,int ,int,struct tm6000_fh*,int *) ;

__attribute__((used)) static int __tm6000_open(struct file *file)
{
 struct video_device *vdev = video_devdata(file);
 struct tm6000_core *dev = video_drvdata(file);
 struct tm6000_fh *fh;
 enum v4l2_buf_type type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 int rc;
 int radio = 0;

 dprintk(dev, V4L2_DEBUG_OPEN, "tm6000: open called (dev=%s)\n",
  video_device_node_name(vdev));

 switch (vdev->vfl_type) {
 case 130:
  type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
  break;
 case 128:
  type = V4L2_BUF_TYPE_VBI_CAPTURE;
  break;
 case 129:
  radio = 1;
  break;
 default:
  return -EINVAL;
 }


 dev->users++;

 dprintk(dev, V4L2_DEBUG_OPEN, "open dev=%s type=%s users=%d\n",
  video_device_node_name(vdev), v4l2_type_names[type],
  dev->users);


 fh = kzalloc(sizeof(*fh), GFP_KERNEL);
 if (((void*)0) == fh) {
  dev->users--;
  return -ENOMEM;
 }

 v4l2_fh_init(&fh->fh, vdev);
 file->private_data = fh;
 fh->dev = dev;
 fh->radio = radio;
 dev->radio = radio;
 fh->type = type;
 dev->fourcc = format[0].fourcc;

 fh->fmt = format_by_fourcc(dev->fourcc);

 tm6000_get_std_res(dev);

 fh->width = dev->width;
 fh->height = dev->height;

 dprintk(dev, V4L2_DEBUG_OPEN, "Open: fh=%p, dev=%p, dev->vidq=%p\n",
  fh, dev, &dev->vidq);
 dprintk(dev, V4L2_DEBUG_OPEN, "Open: list_empty queued=%d\n",
  list_empty(&dev->vidq.queued));
 dprintk(dev, V4L2_DEBUG_OPEN, "Open: list_empty active=%d\n",
  list_empty(&dev->vidq.active));


 rc = tm6000_init_analog_mode(dev);
 if (rc < 0) {
  v4l2_fh_exit(&fh->fh);
  kfree(fh);
  return rc;
 }

 dev->mode = TM6000_MODE_ANALOG;

 if (!fh->radio) {
  videobuf_queue_vmalloc_init(&fh->vb_vidq, &tm6000_video_qops,
    ((void*)0), &dev->slock,
    fh->type,
    V4L2_FIELD_INTERLACED,
    sizeof(struct tm6000_buffer), fh, &dev->lock);
 } else {
  dprintk(dev, V4L2_DEBUG_OPEN, "video_open: setting radio device\n");
  tm6000_set_audio_rinput(dev);
  v4l2_device_call_all(&dev->v4l2_dev, 0, tuner, s_radio);
  tm6000_prepare_isoc(dev);
  tm6000_start_thread(dev);
 }
 v4l2_fh_add(&fh->fh);

 return 0;
}
