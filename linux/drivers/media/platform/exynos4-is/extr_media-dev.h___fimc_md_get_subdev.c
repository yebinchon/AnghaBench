
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct fimc_pipeline {struct v4l2_subdev** subdevs; } ;
struct exynos_media_pipeline {int dummy; } ;


 unsigned int IDX_MAX ;
 struct fimc_pipeline* to_fimc_pipeline (struct exynos_media_pipeline*) ;

__attribute__((used)) static inline struct v4l2_subdev *__fimc_md_get_subdev(
    struct exynos_media_pipeline *ep,
    unsigned int index)
{
 struct fimc_pipeline *p = to_fimc_pipeline(ep);

 if (!p || index >= IDX_MAX)
  return ((void*)0);
 else
  return p->subdevs[index];
}
