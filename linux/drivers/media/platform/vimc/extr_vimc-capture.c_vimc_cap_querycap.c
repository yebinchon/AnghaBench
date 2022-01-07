
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 char* KBUILD_MODNAME ;
 char* VIMC_PDEV_NAME ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int vimc_cap_querycap(struct file *file, void *priv,
        struct v4l2_capability *cap)
{
 strscpy(cap->driver, VIMC_PDEV_NAME, sizeof(cap->driver));
 strscpy(cap->card, KBUILD_MODNAME, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "platform:%s", VIMC_PDEV_NAME);

 return 0;
}
