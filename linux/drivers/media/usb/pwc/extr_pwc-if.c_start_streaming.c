
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vb2_queue {int dummy; } ;
struct pwc_device {int v4l2_lock; int udev; } ;


 int ENODEV ;
 int ERESTARTSYS ;
 int VB2_BUF_STATE_QUEUED ;
 int * leds ;
 scalar_t__ mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int pwc_camera_power (struct pwc_device*,int) ;
 int pwc_cleanup_queued_bufs (struct pwc_device*,int ) ;
 int pwc_isoc_init (struct pwc_device*) ;
 int pwc_set_leds (struct pwc_device*,int ,int ) ;
 struct pwc_device* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static int start_streaming(struct vb2_queue *vq, unsigned int count)
{
 struct pwc_device *pdev = vb2_get_drv_priv(vq);
 int r;

 if (!pdev->udev)
  return -ENODEV;

 if (mutex_lock_interruptible(&pdev->v4l2_lock))
  return -ERESTARTSYS;

 pwc_camera_power(pdev, 1);
 pwc_set_leds(pdev, leds[0], leds[1]);

 r = pwc_isoc_init(pdev);
 if (r) {

  pwc_set_leds(pdev, 0, 0);
  pwc_camera_power(pdev, 0);

  pwc_cleanup_queued_bufs(pdev, VB2_BUF_STATE_QUEUED);
 }
 mutex_unlock(&pdev->v4l2_lock);

 return r;
}
