
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev {int grp_id; } ;
struct fimc_md {int v4l2_dev; int user_subdev_api; struct fimc_dev** fimc; int * pmf; } ;
struct TYPE_4__ {int user_subdev_api; struct v4l2_subdev subdev; } ;
struct fimc_dev {size_t id; TYPE_2__ vid_cap; TYPE_1__* pdev; } ;
struct exynos_media_pipeline {int dummy; } ;
struct TYPE_3__ {int dev; } ;


 int EBUSY ;
 int ENOMEM ;
 size_t FIMC_MAX_DEVS ;
 int GRP_ID_FIMC ;
 scalar_t__ WARN_ON (int ) ;
 struct exynos_media_pipeline* fimc_md_pipeline_create (struct fimc_md*) ;
 int v4l2_device_register_subdev (int *,struct v4l2_subdev*) ;
 int v4l2_err (int *,char*,size_t,int) ;
 int v4l2_set_subdev_hostdata (struct v4l2_subdev*,struct exynos_media_pipeline*) ;

__attribute__((used)) static int register_fimc_entity(struct fimc_md *fmd, struct fimc_dev *fimc)
{
 struct v4l2_subdev *sd;
 struct exynos_media_pipeline *ep;
 int ret;

 if (WARN_ON(fimc->id >= FIMC_MAX_DEVS || fmd->fimc[fimc->id]))
  return -EBUSY;

 sd = &fimc->vid_cap.subdev;
 sd->grp_id = GRP_ID_FIMC;

 ep = fimc_md_pipeline_create(fmd);
 if (!ep)
  return -ENOMEM;

 v4l2_set_subdev_hostdata(sd, ep);

 ret = v4l2_device_register_subdev(&fmd->v4l2_dev, sd);
 if (!ret) {
  if (!fmd->pmf && fimc->pdev)
   fmd->pmf = &fimc->pdev->dev;
  fmd->fimc[fimc->id] = fimc;
  fimc->vid_cap.user_subdev_api = fmd->user_subdev_api;
 } else {
  v4l2_err(&fmd->v4l2_dev, "Failed to register FIMC.%d (%d)\n",
    fimc->id, ret);
 }
 return ret;
}
