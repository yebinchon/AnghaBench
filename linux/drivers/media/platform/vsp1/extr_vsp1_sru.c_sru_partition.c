
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;
struct vsp1_sru {TYPE_1__ entity; } ;
struct vsp1_pipeline {int dummy; } ;
struct vsp1_partition_window {int width; int left; } ;
struct vsp1_partition {struct vsp1_partition_window sru; } ;
struct vsp1_entity {int subdev; } ;
struct v4l2_mbus_framefmt {scalar_t__ width; } ;


 int SRU_PAD_SINK ;
 int SRU_PAD_SOURCE ;
 struct vsp1_sru* to_sru (int *) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void sru_partition(struct vsp1_entity *entity,
     struct vsp1_pipeline *pipe,
     struct vsp1_partition *partition,
     unsigned int partition_idx,
     struct vsp1_partition_window *window)
{
 struct vsp1_sru *sru = to_sru(&entity->subdev);
 struct v4l2_mbus_framefmt *input;
 struct v4l2_mbus_framefmt *output;

 input = vsp1_entity_get_pad_format(&sru->entity, sru->entity.config,
        SRU_PAD_SINK);
 output = vsp1_entity_get_pad_format(&sru->entity, sru->entity.config,
         SRU_PAD_SOURCE);


 if (input->width != output->width) {
  window->width /= 2;
  window->left /= 2;
 }

 partition->sru = *window;
}
