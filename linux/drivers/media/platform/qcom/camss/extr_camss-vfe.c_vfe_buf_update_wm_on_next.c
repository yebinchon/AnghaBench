
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vfe_output {int state; } ;
struct vfe_device {TYPE_1__* camss; } ;
struct TYPE_2__ {int dev; } ;




 int dev_err_ratelimited (int ,char*,int) ;
 int vfe_output_frame_drop (struct vfe_device*,struct vfe_output*,int) ;

__attribute__((used)) static void vfe_buf_update_wm_on_next(struct vfe_device *vfe,
          struct vfe_output *output)
{
 switch (output->state) {
 case 129:
  vfe_output_frame_drop(vfe, output, 3);
  break;
 case 128:
 default:
  dev_err_ratelimited(vfe->camss->dev,
        "Next buf in wrong state! %d\n",
        output->state);
  break;
 }
}
