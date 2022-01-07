
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gpio_data; int gpio_direction; } ;
struct TYPE_4__ {int stream_mode; } ;
struct TYPE_6__ {TYPE_2__ vp_params; TYPE_1__ camera_state; } ;
struct camera_data {int hdl; TYPE_3__ params; } ;


 int CPIA2_CMD_SET_VC_MP_GPIO_DATA ;
 int CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,int ) ;
 int cpia2_usb_change_streaming_alternate (struct camera_data*,int ) ;
 int set_lowlight_boost (struct camera_data*) ;
 int v4l2_ctrl_handler_setup (int *) ;
 int wake_system (struct camera_data*) ;

__attribute__((used)) static int set_all_properties(struct camera_data *cam)
{





 cpia2_usb_change_streaming_alternate(cam,
       cam->params.camera_state.stream_mode);

 cpia2_do_command(cam,
    CPIA2_CMD_SET_VC_MP_GPIO_DIRECTION,
    TRANSFER_WRITE, cam->params.vp_params.gpio_direction);
 cpia2_do_command(cam, CPIA2_CMD_SET_VC_MP_GPIO_DATA, TRANSFER_WRITE,
    cam->params.vp_params.gpio_data);

 v4l2_ctrl_handler_setup(&cam->hdl);

 wake_system(cam);

 set_lowlight_boost(cam);

 return 0;
}
