
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpbe_device {struct vpbe_config* cfg; } ;
struct vpbe_config {unsigned int num_outputs; TYPE_1__* outputs; } ;
struct v4l2_output {unsigned int index; } ;
struct TYPE_2__ {struct v4l2_output output; } ;


 int EINVAL ;

__attribute__((used)) static int vpbe_enum_outputs(struct vpbe_device *vpbe_dev,
        struct v4l2_output *output)
{
 struct vpbe_config *cfg = vpbe_dev->cfg;
 unsigned int temp_index = output->index;

 if (temp_index >= cfg->num_outputs)
  return -EINVAL;

 *output = cfg->outputs[temp_index].output;
 output->index = temp_index;

 return 0;
}
