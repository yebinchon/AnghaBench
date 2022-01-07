
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int user_effects; } ;
struct TYPE_4__ {int stream_mode; } ;
struct TYPE_6__ {TYPE_2__ vp_params; TYPE_1__ camera_state; } ;
struct camera_data {TYPE_3__ params; scalar_t__ first_image_seen; scalar_t__ streaming; } ;


 int CPIA2_CMD_SET_USER_EFFECTS ;
 int TRANSFER_WRITE ;
 int cpia2_do_command (struct camera_data*,int ,int ,int ) ;
 int set_alternate (struct camera_data*,int ) ;
 int submit_urbs (struct camera_data*) ;

int cpia2_usb_stream_resume(struct camera_data *cam)
{
 int ret = 0;
 if(cam->streaming) {
  cam->first_image_seen = 0;
  ret = set_alternate(cam, cam->params.camera_state.stream_mode);
  if(ret == 0) {


   cpia2_do_command(cam, CPIA2_CMD_SET_USER_EFFECTS, TRANSFER_WRITE,
     cam->params.vp_params.user_effects);
   ret = submit_urbs(cam);
  }
 }
 return ret;
}
