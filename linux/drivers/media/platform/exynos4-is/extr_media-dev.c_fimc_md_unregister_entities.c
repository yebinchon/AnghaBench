
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct fimc_md {int v4l2_dev; TYPE_6__* fimc_is; TYPE_4__* csis; struct fimc_lite** fimc_lite; struct fimc_dev** fimc; } ;
struct TYPE_9__ {int * pipe; } ;
struct fimc_lite {TYPE_3__ ve; int subdev; } ;
struct TYPE_7__ {int * pipe; } ;
struct TYPE_8__ {TYPE_1__ ve; int subdev; } ;
struct fimc_dev {TYPE_2__ vid_cap; } ;
struct TYPE_11__ {int subdev; } ;
struct TYPE_12__ {TYPE_5__ isp; } ;
struct TYPE_10__ {int * sd; } ;


 int CSIS_MAX_ENTITIES ;
 int FIMC_LITE_MAX_DEVS ;
 int FIMC_MAX_DEVS ;
 int v4l2_device_unregister_subdev (int *) ;
 int v4l2_info (int *,char*) ;

__attribute__((used)) static void fimc_md_unregister_entities(struct fimc_md *fmd)
{
 int i;

 for (i = 0; i < FIMC_MAX_DEVS; i++) {
  struct fimc_dev *dev = fmd->fimc[i];
  if (dev == ((void*)0))
   continue;
  v4l2_device_unregister_subdev(&dev->vid_cap.subdev);
  dev->vid_cap.ve.pipe = ((void*)0);
  fmd->fimc[i] = ((void*)0);
 }
 for (i = 0; i < FIMC_LITE_MAX_DEVS; i++) {
  struct fimc_lite *dev = fmd->fimc_lite[i];
  if (dev == ((void*)0))
   continue;
  v4l2_device_unregister_subdev(&dev->subdev);
  dev->ve.pipe = ((void*)0);
  fmd->fimc_lite[i] = ((void*)0);
 }
 for (i = 0; i < CSIS_MAX_ENTITIES; i++) {
  if (fmd->csis[i].sd == ((void*)0))
   continue;
  v4l2_device_unregister_subdev(fmd->csis[i].sd);
  fmd->csis[i].sd = ((void*)0);
 }

 if (fmd->fimc_is)
  v4l2_device_unregister_subdev(&fmd->fimc_is->isp.subdev);

 v4l2_info(&fmd->v4l2_dev, "Unregistered all entities\n");
}
