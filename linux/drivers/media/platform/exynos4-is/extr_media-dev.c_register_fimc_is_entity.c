
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct fimc_md {struct fimc_is* fimc_is; int v4l2_dev; } ;
struct TYPE_2__ {struct v4l2_subdev subdev; } ;
struct fimc_is {TYPE_1__ isp; } ;
struct exynos_media_pipeline {int dummy; } ;


 int ENOMEM ;
 struct exynos_media_pipeline* fimc_md_pipeline_create (struct fimc_md*) ;
 int v4l2_device_register_subdev (int *,struct v4l2_subdev*) ;
 int v4l2_err (int *,char*,int) ;
 int v4l2_set_subdev_hostdata (struct v4l2_subdev*,struct exynos_media_pipeline*) ;

__attribute__((used)) static int register_fimc_is_entity(struct fimc_md *fmd, struct fimc_is *is)
{
 struct v4l2_subdev *sd = &is->isp.subdev;
 struct exynos_media_pipeline *ep;
 int ret;


 ep = fimc_md_pipeline_create(fmd);
 if (!ep)
  return -ENOMEM;

 v4l2_set_subdev_hostdata(sd, ep);

 ret = v4l2_device_register_subdev(&fmd->v4l2_dev, sd);
 if (ret) {
  v4l2_err(&fmd->v4l2_dev,
    "Failed to register FIMC-ISP (%d)\n", ret);
  return ret;
 }

 fmd->fimc_is = is;
 return 0;
}
