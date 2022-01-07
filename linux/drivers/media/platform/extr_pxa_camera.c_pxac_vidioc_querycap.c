
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int card; int driver; int bus_info; } ;
struct file {int dummy; } ;


 char* PXA_CAM_DRV_NAME ;
 char* pxa_cam_driver_description ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int pxac_vidioc_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 strscpy(cap->bus_info, "platform:pxa-camera", sizeof(cap->bus_info));
 strscpy(cap->driver, PXA_CAM_DRV_NAME, sizeof(cap->driver));
 strscpy(cap->card, pxa_cam_driver_description, sizeof(cap->card));
 return 0;
}
