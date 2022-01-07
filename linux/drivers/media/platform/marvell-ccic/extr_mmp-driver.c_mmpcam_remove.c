
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcam_camera {int dummy; } ;
struct mmp_camera {struct mcam_camera mcam; } ;


 int mccic_shutdown (struct mcam_camera*) ;
 int mmpcam_remove_device (struct mmp_camera*) ;

__attribute__((used)) static int mmpcam_remove(struct mmp_camera *cam)
{
 struct mcam_camera *mcam = &cam->mcam;

 mmpcam_remove_device(cam);
 mccic_shutdown(mcam);
 return 0;
}
