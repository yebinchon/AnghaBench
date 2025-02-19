
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {scalar_t__ type; } ;
struct au0828_dev {scalar_t__ streaming_users; int vid_timeout_running; int vbi_timeout_running; int vbi_timeout; int vid_timeout; int v4l2_dev; int max_pkt_size; scalar_t__ vbi_frame_count; scalar_t__ frame_count; } ;


 int AU0828_ISO_PACKETS_PER_URB ;
 int AU0828_MAX_ISO_BUFS ;
 int HZ ;
 scalar_t__ V4L2_BUF_TYPE_VBI_CAPTURE ;
 scalar_t__ V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int au0828_i2s_init (struct au0828_dev*) ;
 int au0828_init_isoc (struct au0828_dev*,int ,int ,int ,int ) ;
 int au0828_isoc_copy ;
 int dprintk (int,char*,scalar_t__) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int pr_info (char*) ;
 int s_stream ;
 int v4l2_device_call_all (int *,int ,int ,int ,int) ;
 struct au0828_dev* vb2_get_drv_priv (struct vb2_queue*) ;
 int video ;

int au0828_start_analog_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct au0828_dev *dev = vb2_get_drv_priv(vq);
 int rc = 0;

 dprintk(1, "au0828_start_analog_streaming called %d\n",
  dev->streaming_users);

 if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE)
  dev->frame_count = 0;
 else
  dev->vbi_frame_count = 0;

 if (dev->streaming_users == 0) {

  au0828_i2s_init(dev);
  rc = au0828_init_isoc(dev, AU0828_ISO_PACKETS_PER_URB,
       AU0828_MAX_ISO_BUFS, dev->max_pkt_size,
       au0828_isoc_copy);
  if (rc < 0) {
   pr_info("au0828_init_isoc failed\n");
   return rc;
  }

  v4l2_device_call_all(&dev->v4l2_dev, 0, video, s_stream, 1);

  if (vq->type == V4L2_BUF_TYPE_VIDEO_CAPTURE) {
   dev->vid_timeout_running = 1;
   mod_timer(&dev->vid_timeout, jiffies + (HZ / 10));
  } else if (vq->type == V4L2_BUF_TYPE_VBI_CAPTURE) {
   dev->vbi_timeout_running = 1;
   mod_timer(&dev->vbi_timeout, jiffies + (HZ / 10));
  }
 }
 dev->streaming_users++;
 return rc;
}
