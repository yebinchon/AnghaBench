
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct exynos_media_pipeline {int * ops; } ;
struct fimc_pipeline {struct exynos_media_pipeline ep; int list; } ;
struct fimc_md {int pipelines; } ;


 int GFP_KERNEL ;
 int fimc_pipeline_ops ;
 struct fimc_pipeline* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct exynos_media_pipeline *fimc_md_pipeline_create(
      struct fimc_md *fmd)
{
 struct fimc_pipeline *p;

 p = kzalloc(sizeof(*p), GFP_KERNEL);
 if (!p)
  return ((void*)0);

 list_add_tail(&p->list, &fmd->pipelines);

 p->ep.ops = &fimc_pipeline_ops;
 return &p->ep;
}
