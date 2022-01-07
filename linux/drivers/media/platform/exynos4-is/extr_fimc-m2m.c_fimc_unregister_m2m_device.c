
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int entity; } ;
struct TYPE_4__ {TYPE_2__ vfd; scalar_t__ m2m_dev; } ;
struct fimc_dev {TYPE_1__ m2m; } ;


 int media_entity_cleanup (int *) ;
 int v4l2_m2m_release (scalar_t__) ;
 scalar_t__ video_is_registered (TYPE_2__*) ;
 int video_unregister_device (TYPE_2__*) ;

void fimc_unregister_m2m_device(struct fimc_dev *fimc)
{
 if (!fimc)
  return;

 if (fimc->m2m.m2m_dev)
  v4l2_m2m_release(fimc->m2m.m2m_dev);

 if (video_is_registered(&fimc->m2m.vfd)) {
  video_unregister_device(&fimc->m2m.vfd);
  media_entity_cleanup(&fimc->m2m.vfd.entity);
 }
}
