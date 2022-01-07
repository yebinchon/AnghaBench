
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_device {int device_caps; int num; int name; int * v4l2_dev; int * lock; } ;
struct vicodec_dev_instance {int m2m_dev; int mutex; struct video_device vfd; int lock; } ;
struct vicodec_dev {int v4l2_dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int V4L2_CAP_STREAMING ;
 int V4L2_CAP_VIDEO_M2M ;
 int V4L2_CAP_VIDEO_M2M_MPLANE ;
 int VFL_TYPE_GRABBER ;
 int VIDIOC_DECODER_CMD ;
 int VIDIOC_ENCODER_CMD ;
 int VIDIOC_TRY_DECODER_CMD ;
 int VIDIOC_TRY_ENCODER_CMD ;
 int m2m_ops ;
 scalar_t__ multiplanar ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;
 int strscpy (int ,char const*,int) ;
 int v4l2_disable_ioctl (struct video_device*,int ) ;
 int v4l2_err (int *,char*,...) ;
 int v4l2_info (int *,char*,char const*,int ) ;
 int v4l2_m2m_init (int *) ;
 int v4l2_m2m_release (int ) ;
 struct video_device vicodec_videodev ;
 int video_register_device (struct video_device*,int ,int ) ;
 int video_set_drvdata (struct video_device*,struct vicodec_dev*) ;

__attribute__((used)) static int register_instance(struct vicodec_dev *dev,
        struct vicodec_dev_instance *dev_instance,
        const char *name, bool is_enc)
{
 struct video_device *vfd;
 int ret;

 spin_lock_init(&dev_instance->lock);
 mutex_init(&dev_instance->mutex);
 dev_instance->m2m_dev = v4l2_m2m_init(&m2m_ops);
 if (IS_ERR(dev_instance->m2m_dev)) {
  v4l2_err(&dev->v4l2_dev, "Failed to init vicodec enc device\n");
  return PTR_ERR(dev_instance->m2m_dev);
 }

 dev_instance->vfd = vicodec_videodev;
 vfd = &dev_instance->vfd;
 vfd->lock = &dev_instance->mutex;
 vfd->v4l2_dev = &dev->v4l2_dev;
 strscpy(vfd->name, name, sizeof(vfd->name));
 vfd->device_caps = V4L2_CAP_STREAMING |
  (multiplanar ? V4L2_CAP_VIDEO_M2M_MPLANE : V4L2_CAP_VIDEO_M2M);
 if (is_enc) {
  v4l2_disable_ioctl(vfd, VIDIOC_DECODER_CMD);
  v4l2_disable_ioctl(vfd, VIDIOC_TRY_DECODER_CMD);
 } else {
  v4l2_disable_ioctl(vfd, VIDIOC_ENCODER_CMD);
  v4l2_disable_ioctl(vfd, VIDIOC_TRY_ENCODER_CMD);
 }
 video_set_drvdata(vfd, dev);

 ret = video_register_device(vfd, VFL_TYPE_GRABBER, 0);
 if (ret) {
  v4l2_err(&dev->v4l2_dev, "Failed to register video device '%s'\n", name);
  v4l2_m2m_release(dev_instance->m2m_dev);
  return ret;
 }
 v4l2_info(&dev->v4l2_dev, "Device '%s' registered as /dev/video%d\n",
    name, vfd->num);
 return 0;
}
