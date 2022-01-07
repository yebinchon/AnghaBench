
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vsp1_pipeline {int partitions; TYPE_1__* output; } ;
struct vsp1_partition_window {unsigned int left; unsigned int width; } ;
struct vsp1_partition {int dummy; } ;
struct v4l2_mbus_framefmt {unsigned int width; } ;
struct TYPE_4__ {int config; } ;
struct TYPE_3__ {TYPE_2__ entity; } ;


 int RWPF_PAD_SINK ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_2__*,int ,int ) ;
 int vsp1_pipeline_propagate_partition (struct vsp1_pipeline*,struct vsp1_partition*,unsigned int,struct vsp1_partition_window*) ;

__attribute__((used)) static void vsp1_video_calculate_partition(struct vsp1_pipeline *pipe,
        struct vsp1_partition *partition,
        unsigned int div_size,
        unsigned int index)
{
 const struct v4l2_mbus_framefmt *format;
 struct vsp1_partition_window window;
 unsigned int modulus;





 format = vsp1_entity_get_pad_format(&pipe->output->entity,
         pipe->output->entity.config,
         RWPF_PAD_SINK);


 if (pipe->partitions <= 1) {
  window.left = 0;
  window.width = format->width;

  vsp1_pipeline_propagate_partition(pipe, partition, index,
        &window);
  return;
 }


 window.left = index * div_size;
 window.width = div_size;

 modulus = format->width % div_size;
 if (modulus) {




  unsigned int partitions = pipe->partitions - 1;

  if (modulus < div_size / 2) {
   if (index == partitions - 1) {

    window.width = div_size / 2;
   } else if (index == partitions) {

    window.width = (div_size / 2) + modulus;
    window.left -= div_size / 2;
   }
  } else if (index == partitions) {
   window.width = modulus;
  }
 }

 vsp1_pipeline_propagate_partition(pipe, partition, index, &window);
}
