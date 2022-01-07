
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vb2_queue {int dummy; } ;
struct pwc_device {int v4l2_lock; TYPE_1__* fill_buf; scalar_t__ udev; } ;
struct TYPE_4__ {int vb2_buf; } ;
struct TYPE_3__ {TYPE_2__ vb; } ;


 int VB2_BUF_STATE_ERROR ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwc_camera_power (struct pwc_device*,int ) ;
 int pwc_cleanup_queued_bufs (struct pwc_device*,int ) ;
 int pwc_isoc_cleanup (struct pwc_device*) ;
 int pwc_set_leds (struct pwc_device*,int ,int ) ;
 int vb2_buffer_done (int *,int ) ;
 struct pwc_device* vb2_get_drv_priv (struct vb2_queue*) ;

__attribute__((used)) static void stop_streaming(struct vb2_queue *vq)
{
 struct pwc_device *pdev = vb2_get_drv_priv(vq);

 mutex_lock(&pdev->v4l2_lock);
 if (pdev->udev) {
  pwc_set_leds(pdev, 0, 0);
  pwc_camera_power(pdev, 0);
  pwc_isoc_cleanup(pdev);
 }

 pwc_cleanup_queued_bufs(pdev, VB2_BUF_STATE_ERROR);
 if (pdev->fill_buf)
  vb2_buffer_done(&pdev->fill_buf->vb.vb2_buf,
    VB2_BUF_STATE_ERROR);
 mutex_unlock(&pdev->v4l2_lock);
}
