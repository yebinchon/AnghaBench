
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mmp_camera {int devlist; } ;


 int list_del (int *) ;
 int mmpcam_devices_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void mmpcam_remove_device(struct mmp_camera *cam)
{
 mutex_lock(&mmpcam_devices_lock);
 list_del(&cam->devlist);
 mutex_unlock(&mmpcam_devices_lock);
}
