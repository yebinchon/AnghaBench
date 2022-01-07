
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_entity {int dummy; } ;


 scalar_t__ isp_pipeline_is_last (struct media_entity*) ;
 int isp_pipeline_resume (int ) ;
 int to_isp_pipeline (struct media_entity*) ;

__attribute__((used)) static void isp_resume_module_pipeline(struct media_entity *me)
{
 if (isp_pipeline_is_last(me))
  isp_pipeline_resume(to_isp_pipeline(me));
}
