
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {scalar_t__ state; } ;


 scalar_t__ S_IDLE ;
 scalar_t__ S_NOTREADY ;
 int __mcam_cam_reset (struct mcam_camera*) ;
 int cam_warn (struct mcam_camera*,char*,scalar_t__) ;

__attribute__((used)) static int mcam_cam_init(struct mcam_camera *cam)
{
 int ret;

 if (cam->state != S_NOTREADY)
  cam_warn(cam, "Cam init with device in funky state %d",
    cam->state);
 ret = __mcam_cam_reset(cam);

 cam->state = S_IDLE;
 return ret;
}
