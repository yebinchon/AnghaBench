
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsp1_pipeline {int num_inputs; unsigned int buffers_ready; int lif; } ;



bool vsp1_pipeline_ready(struct vsp1_pipeline *pipe)
{
 unsigned int mask;

 mask = ((1 << pipe->num_inputs) - 1) << 1;
 if (!pipe->lif)
  mask |= 1 << 0;

 return pipe->buffers_ready == mask;
}
