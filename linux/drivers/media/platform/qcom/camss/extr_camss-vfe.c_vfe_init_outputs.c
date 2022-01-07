
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_output {int pending_bufs; int ** buf; int state; } ;
struct vfe_device {TYPE_1__* line; } ;
struct TYPE_2__ {struct vfe_output output; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int INIT_LIST_HEAD (int *) ;
 int VFE_OUTPUT_OFF ;

__attribute__((used)) static void vfe_init_outputs(struct vfe_device *vfe)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(vfe->line); i++) {
  struct vfe_output *output = &vfe->line[i].output;

  output->state = VFE_OUTPUT_OFF;
  output->buf[0] = ((void*)0);
  output->buf[1] = ((void*)0);
  INIT_LIST_HEAD(&output->pending_bufs);
 }
}
