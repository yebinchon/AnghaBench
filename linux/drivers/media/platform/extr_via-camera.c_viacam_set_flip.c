
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct via_camera {TYPE_1__* sensor; } ;
struct v4l2_control {int value; int id; } ;
typedef int ctrl ;
struct TYPE_2__ {int ctrl_handler; } ;


 int V4L2_CID_VFLIP ;
 int flip_image ;
 int memset (struct v4l2_control*,int ,int) ;
 int v4l2_s_ctrl (int *,int ,struct v4l2_control*) ;

__attribute__((used)) static int viacam_set_flip(struct via_camera *cam)
{
 struct v4l2_control ctrl;

 memset(&ctrl, 0, sizeof(ctrl));
 ctrl.id = V4L2_CID_VFLIP;
 ctrl.value = flip_image;
 return v4l2_s_ctrl(((void*)0), cam->sensor->ctrl_handler, &ctrl);
}
