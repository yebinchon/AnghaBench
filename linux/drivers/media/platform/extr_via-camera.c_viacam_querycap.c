
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;

__attribute__((used)) static int viacam_querycap(struct file *filp, void *priv,
  struct v4l2_capability *cap)
{
 strscpy(cap->driver, "via-camera", sizeof(cap->driver));
 strscpy(cap->card, "via-camera", sizeof(cap->card));
 strscpy(cap->bus_info, "platform:via-camera", sizeof(cap->bus_info));
 return 0;
}
