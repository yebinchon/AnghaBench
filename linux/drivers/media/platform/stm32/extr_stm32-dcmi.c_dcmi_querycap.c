
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 char* DRV_NAME ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int dcmi_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 strscpy(cap->driver, DRV_NAME, sizeof(cap->driver));
 strscpy(cap->card, "STM32 Camera Memory Interface",
  sizeof(cap->card));
 strscpy(cap->bus_info, "platform:dcmi", sizeof(cap->bus_info));
 return 0;
}
