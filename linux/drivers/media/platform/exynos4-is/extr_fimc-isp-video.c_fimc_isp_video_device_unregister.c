
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int entity; } ;
struct exynos_video_entity {int * pipe; TYPE_2__ vdev; } ;
struct TYPE_4__ {struct exynos_video_entity ve; } ;
struct fimc_isp {int video_lock; TYPE_1__ video_capture; } ;
typedef enum v4l2_buf_type { ____Placeholder_v4l2_buf_type } v4l2_buf_type ;


 int V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE ;
 int media_entity_cleanup (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ video_is_registered (TYPE_2__*) ;
 int video_unregister_device (TYPE_2__*) ;

void fimc_isp_video_device_unregister(struct fimc_isp *isp,
          enum v4l2_buf_type type)
{
 struct exynos_video_entity *ve;

 if (type == V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE)
  ve = &isp->video_capture.ve;
 else
  return;

 mutex_lock(&isp->video_lock);

 if (video_is_registered(&ve->vdev)) {
  video_unregister_device(&ve->vdev);
  media_entity_cleanup(&ve->vdev.entity);
  ve->pipe = ((void*)0);
 }

 mutex_unlock(&isp->video_lock);
}
