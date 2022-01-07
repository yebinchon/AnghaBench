
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct mmp_camera {int dummy; } ;


 int ENODEV ;
 struct mmp_camera* mmpcam_find_device (struct platform_device*) ;
 int mmpcam_remove (struct mmp_camera*) ;

__attribute__((used)) static int mmpcam_platform_remove(struct platform_device *pdev)
{
 struct mmp_camera *cam = mmpcam_find_device(pdev);

 if (cam == ((void*)0))
  return -ENODEV;
 return mmpcam_remove(cam);
}
