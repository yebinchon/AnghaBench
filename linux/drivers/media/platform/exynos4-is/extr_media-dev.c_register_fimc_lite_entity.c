
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int grp_id; } ;
struct fimc_md {int v4l2_dev; struct fimc_lite** fimc_lite; } ;
struct fimc_lite {size_t index; struct v4l2_subdev subdev; } ;
struct exynos_media_pipeline {int dummy; } ;


 int EBUSY ;
 int ENOMEM ;
 size_t FIMC_LITE_MAX_DEVS ;
 int GRP_ID_FLITE ;
 scalar_t__ WARN_ON (int ) ;
 struct exynos_media_pipeline* fimc_md_pipeline_create (struct fimc_md*) ;
 int v4l2_device_register_subdev (int *,struct v4l2_subdev*) ;
 int v4l2_err (int *,char*,size_t) ;
 int v4l2_set_subdev_hostdata (struct v4l2_subdev*,struct exynos_media_pipeline*) ;

__attribute__((used)) static int register_fimc_lite_entity(struct fimc_md *fmd,
         struct fimc_lite *fimc_lite)
{
 struct v4l2_subdev *sd;
 struct exynos_media_pipeline *ep;
 int ret;

 if (WARN_ON(fimc_lite->index >= FIMC_LITE_MAX_DEVS ||
      fmd->fimc_lite[fimc_lite->index]))
  return -EBUSY;

 sd = &fimc_lite->subdev;
 sd->grp_id = GRP_ID_FLITE;

 ep = fimc_md_pipeline_create(fmd);
 if (!ep)
  return -ENOMEM;

 v4l2_set_subdev_hostdata(sd, ep);

 ret = v4l2_device_register_subdev(&fmd->v4l2_dev, sd);
 if (!ret)
  fmd->fimc_lite[fimc_lite->index] = fimc_lite;
 else
  v4l2_err(&fmd->v4l2_dev, "Failed to register FIMC.LITE%d\n",
    fimc_lite->index);
 return ret;
}
