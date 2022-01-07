
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct camera_data {int vdev; } ;


 int video_unregister_device (int *) ;

void cpia2_unregister_camera(struct camera_data *cam)
{
 video_unregister_device(&cam->vdev);
}
