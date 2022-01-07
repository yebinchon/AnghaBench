
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rotate; } ;
struct vsp1_rwpf {unsigned int max_width; TYPE_1__ flip; } ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_entity {int subdev; } ;


 struct vsp1_rwpf* to_rwpf (int *) ;

__attribute__((used)) static unsigned int wpf_max_width(struct vsp1_entity *entity,
      struct vsp1_pipeline *pipe)
{
 struct vsp1_rwpf *wpf = to_rwpf(&entity->subdev);

 return wpf->flip.rotate ? 256 : wpf->max_width;
}
