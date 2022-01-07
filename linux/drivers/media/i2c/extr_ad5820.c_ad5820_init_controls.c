
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int error; } ;
struct TYPE_4__ {TYPE_2__* ctrl_handler; } ;
struct ad5820_device {TYPE_2__ ctrls; TYPE_1__ subdev; scalar_t__ focus_ramp_mode; scalar_t__ focus_ramp_time; scalar_t__ focus_absolute; } ;


 int V4L2_CID_FOCUS_ABSOLUTE ;
 int ad5820_ctrl_ops ;
 int v4l2_ctrl_handler_init (TYPE_2__*,int) ;
 int v4l2_ctrl_new_std (TYPE_2__*,int *,int ,int ,int,int,int ) ;

__attribute__((used)) static int ad5820_init_controls(struct ad5820_device *coil)
{
 v4l2_ctrl_handler_init(&coil->ctrls, 1);
 v4l2_ctrl_new_std(&coil->ctrls, &ad5820_ctrl_ops,
     V4L2_CID_FOCUS_ABSOLUTE, 0, 1023, 1, 0);

 if (coil->ctrls.error)
  return coil->ctrls.error;

 coil->focus_absolute = 0;
 coil->focus_ramp_time = 0;
 coil->focus_ramp_mode = 0;

 coil->subdev.ctrl_handler = &coil->ctrls;

 return 0;
}
