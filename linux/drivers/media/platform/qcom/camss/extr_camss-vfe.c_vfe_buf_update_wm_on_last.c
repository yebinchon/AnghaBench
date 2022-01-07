
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_output {int state; } ;
struct vfe_device {TYPE_1__* camss; } ;
struct TYPE_2__ {int dev; } ;




 int VFE_OUTPUT_STOPPING ;
 int dev_err_ratelimited (int ,char*,int) ;
 int vfe_output_frame_drop (struct vfe_device*,struct vfe_output*,int) ;

__attribute__((used)) static void vfe_buf_update_wm_on_last(struct vfe_device *vfe,
          struct vfe_output *output)
{
 switch (output->state) {
 case 129:
  output->state = 128;
  vfe_output_frame_drop(vfe, output, 1);
  break;
 case 128:
  output->state = VFE_OUTPUT_STOPPING;
  vfe_output_frame_drop(vfe, output, 0);
  break;
 default:
  dev_err_ratelimited(vfe->camss->dev,
        "Last buff in wrong state! %d\n",
        output->state);
  break;
 }
}
