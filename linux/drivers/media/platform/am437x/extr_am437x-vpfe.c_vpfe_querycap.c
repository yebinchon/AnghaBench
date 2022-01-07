
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;
struct vpfe_device {TYPE_1__ v4l2_dev; } ;
struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 char* VPFE_MODULE_NAME ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct vpfe_device* video_drvdata (struct file*) ;
 int vpfe_dbg (int,struct vpfe_device*,char*) ;

__attribute__((used)) static int vpfe_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 struct vpfe_device *vpfe = video_drvdata(file);

 vpfe_dbg(2, vpfe, "vpfe_querycap\n");

 strscpy(cap->driver, VPFE_MODULE_NAME, sizeof(cap->driver));
 strscpy(cap->card, "TI AM437x VPFE", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "platform:%s", vpfe->v4l2_dev.name);
 return 0;
}
