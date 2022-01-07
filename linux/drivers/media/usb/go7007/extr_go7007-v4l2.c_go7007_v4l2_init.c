
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct video_device {int device_caps; scalar_t__ tvnorms; int * v4l2_dev; TYPE_2__* queue; int * lock; } ;
struct v4l2_frequency {int frequency; int type; } ;
struct go7007_buffer {int dummy; } ;
struct TYPE_4__ {int io_modes; int buf_struct_size; int * lock; int timestamp_flags; struct go7007* drv_priv; int * mem_ops; int * ops; int type; } ;
struct go7007 {int dev; TYPE_1__* board_info; int sd_video; int v4l2_dev; TYPE_2__ vidq; int serialize_lock; int queue_lock; int vidq_active; struct video_device vdev; } ;
struct TYPE_3__ {scalar_t__ num_aud_inputs; int flags; int sensor_flags; } ;


 int GO7007_BOARD_HAS_TUNER ;
 int GO7007_SENSOR_SAA7115 ;
 int GO7007_SENSOR_SCALING ;
 int GO7007_SENSOR_TV ;
 int INIT_LIST_HEAD (int *) ;
 int SAA7115_FREQ_24_576_MHZ ;
 int SAA7115_FREQ_FL_APLL ;
 int SAA7115_FREQ_FL_DOUBLE_ASCLK ;
 int SAA7115_FREQ_FL_UCGC ;
 int V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_CAP_AUDIO ;
 int V4L2_CAP_READWRITE ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_TUNER ;
 int V4L2_CAP_VIDEO_CAPTURE ;
 int V4L2_TUNER_ANALOG_TV ;
 int VB2_MMAP ;
 int VB2_READ ;
 int VB2_USERPTR ;
 int VFL_TYPE_GRABBER ;
 int VIDIOC_ENUMAUDIO ;
 int VIDIOC_ENUM_FRAMESIZES ;
 int VIDIOC_G_AUDIO ;
 int VIDIOC_G_FREQUENCY ;
 int VIDIOC_G_STD ;
 int VIDIOC_G_TUNER ;
 int VIDIOC_QUERYSTD ;
 int VIDIOC_S_AUDIO ;
 int VIDIOC_S_FREQUENCY ;
 int VIDIOC_S_STD ;
 int VIDIOC_S_TUNER ;
 int call_all (int *,int ,int ,struct v4l2_frequency*) ;
 int dev_info (int ,char*,int ) ;
 int go7007_s_input (struct go7007*) ;
 int go7007_s_std (struct go7007*) ;
 struct video_device go7007_template ;
 int go7007_video_qops ;
 int mutex_init (int *) ;
 int querystd ;
 int s_crystal_freq ;
 int s_frequency ;
 int tuner ;
 int v4l2_device_has_op (int *,int ,int ,int ) ;
 int v4l2_disable_ioctl (struct video_device*,int ) ;
 int v4l2_subdev_call (int ,int ,int ,int ,int) ;
 int vb2_queue_init (TYPE_2__*) ;
 int vb2_vmalloc_memops ;
 int video ;
 int video_device_node_name (struct video_device*) ;
 int video_register_device (struct video_device*,int ,int) ;
 int video_set_drvdata (struct video_device*,struct go7007*) ;

int go7007_v4l2_init(struct go7007 *go)
{
 struct video_device *vdev = &go->vdev;
 int rv;

 mutex_init(&go->serialize_lock);
 mutex_init(&go->queue_lock);

 INIT_LIST_HEAD(&go->vidq_active);
 go->vidq.type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 go->vidq.io_modes = VB2_MMAP | VB2_USERPTR | VB2_READ;
 go->vidq.ops = &go7007_video_qops;
 go->vidq.mem_ops = &vb2_vmalloc_memops;
 go->vidq.drv_priv = go;
 go->vidq.buf_struct_size = sizeof(struct go7007_buffer);
 go->vidq.timestamp_flags = V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC;
 go->vidq.lock = &go->queue_lock;
 rv = vb2_queue_init(&go->vidq);
 if (rv)
  return rv;
 *vdev = go7007_template;
 vdev->lock = &go->serialize_lock;
 vdev->queue = &go->vidq;
 vdev->device_caps = V4L2_CAP_VIDEO_CAPTURE | V4L2_CAP_READWRITE |
       V4L2_CAP_STREAMING;
 if (go->board_info->num_aud_inputs)
  vdev->device_caps |= V4L2_CAP_AUDIO;
 if (go->board_info->flags & GO7007_BOARD_HAS_TUNER)
  vdev->device_caps |= V4L2_CAP_TUNER;
 video_set_drvdata(vdev, go);
 vdev->v4l2_dev = &go->v4l2_dev;
 if (!v4l2_device_has_op(&go->v4l2_dev, 0, video, querystd))
  v4l2_disable_ioctl(vdev, VIDIOC_QUERYSTD);
 if (!(go->board_info->flags & GO7007_BOARD_HAS_TUNER)) {
  v4l2_disable_ioctl(vdev, VIDIOC_S_FREQUENCY);
  v4l2_disable_ioctl(vdev, VIDIOC_G_FREQUENCY);
  v4l2_disable_ioctl(vdev, VIDIOC_S_TUNER);
  v4l2_disable_ioctl(vdev, VIDIOC_G_TUNER);
 } else {
  struct v4l2_frequency f = {
   .type = V4L2_TUNER_ANALOG_TV,
   .frequency = 980,
  };

  call_all(&go->v4l2_dev, tuner, s_frequency, &f);
 }
 if (!(go->board_info->sensor_flags & GO7007_SENSOR_TV)) {
  v4l2_disable_ioctl(vdev, VIDIOC_G_STD);
  v4l2_disable_ioctl(vdev, VIDIOC_S_STD);
  vdev->tvnorms = 0;
 }
 if (go->board_info->sensor_flags & GO7007_SENSOR_SCALING)
  v4l2_disable_ioctl(vdev, VIDIOC_ENUM_FRAMESIZES);
 if (go->board_info->num_aud_inputs == 0) {
  v4l2_disable_ioctl(vdev, VIDIOC_G_AUDIO);
  v4l2_disable_ioctl(vdev, VIDIOC_S_AUDIO);
  v4l2_disable_ioctl(vdev, VIDIOC_ENUMAUDIO);
 }

 if (go->board_info->sensor_flags & GO7007_SENSOR_SAA7115)
  v4l2_subdev_call(go->sd_video, video, s_crystal_freq,
    SAA7115_FREQ_24_576_MHZ,
    SAA7115_FREQ_FL_APLL | SAA7115_FREQ_FL_UCGC |
    SAA7115_FREQ_FL_DOUBLE_ASCLK);
 go7007_s_input(go);
 if (go->board_info->sensor_flags & GO7007_SENSOR_TV)
  go7007_s_std(go);
 rv = video_register_device(vdev, VFL_TYPE_GRABBER, -1);
 if (rv < 0)
  return rv;
 dev_info(go->dev, "registered device %s [v4l2]\n",
   video_device_node_name(vdev));

 return 0;
}
