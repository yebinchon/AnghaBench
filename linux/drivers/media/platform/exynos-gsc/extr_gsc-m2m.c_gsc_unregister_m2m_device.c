
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m2m_dev; } ;
struct gsc_dev {int vdev; TYPE_1__ m2m; } ;


 int v4l2_m2m_release (int ) ;
 int video_unregister_device (int *) ;

void gsc_unregister_m2m_device(struct gsc_dev *gsc)
{
 if (gsc) {
  v4l2_m2m_release(gsc->m2m.m2m_dev);
  video_unregister_device(&gsc->vdev);
 }
}
