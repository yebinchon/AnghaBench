
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int card; int bus_info; int driver; } ;
struct file {int dummy; } ;


 int MTK_PLATFORM_STR ;
 int MTK_VCODEC_DEC_NAME ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_vdec_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 strscpy(cap->driver, MTK_VCODEC_DEC_NAME, sizeof(cap->driver));
 strscpy(cap->bus_info, MTK_PLATFORM_STR, sizeof(cap->bus_info));
 strscpy(cap->card, MTK_PLATFORM_STR, sizeof(cap->card));

 return 0;
}
