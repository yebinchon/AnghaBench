
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vpfe_device {TYPE_1__* cfg; int v4l2_dev; } ;
struct v4l2_capability {int card; int bus_info; int driver; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* card_name; } ;


 char* CAPTURE_DRV_NAME ;
 int debug ;
 int strscpy (int ,char*,int) ;
 int v4l2_dbg (int,int ,int *,char*) ;
 struct vpfe_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vpfe_querycap(struct file *file, void *priv,
          struct v4l2_capability *cap)
{
 struct vpfe_device *vpfe_dev = video_drvdata(file);

 v4l2_dbg(1, debug, &vpfe_dev->v4l2_dev, "vpfe_querycap\n");

 strscpy(cap->driver, CAPTURE_DRV_NAME, sizeof(cap->driver));
 strscpy(cap->bus_info, "VPFE", sizeof(cap->bus_info));
 strscpy(cap->card, vpfe_dev->cfg->card_name, sizeof(cap->card));
 return 0;
}
