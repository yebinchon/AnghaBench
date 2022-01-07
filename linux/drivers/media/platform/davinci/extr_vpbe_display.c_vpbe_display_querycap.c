
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpbe_layer {TYPE_2__* disp_dev; } ;
struct vpbe_device {TYPE_1__* cfg; int pdev; } ;
struct v4l2_capability {int card; int bus_info; int driver; } ;
struct file {int dummy; } ;
struct TYPE_4__ {struct vpbe_device* vpbe_dev; } ;
struct TYPE_3__ {int module_name; } ;


 char* dev_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;
 struct vpbe_layer* video_drvdata (struct file*) ;

__attribute__((used)) static int vpbe_display_querycap(struct file *file, void *priv,
          struct v4l2_capability *cap)
{
 struct vpbe_layer *layer = video_drvdata(file);
 struct vpbe_device *vpbe_dev = layer->disp_dev->vpbe_dev;

 snprintf(cap->driver, sizeof(cap->driver), "%s",
  dev_name(vpbe_dev->pdev));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   dev_name(vpbe_dev->pdev));
 strscpy(cap->card, vpbe_dev->cfg->module_name, sizeof(cap->card));

 return 0;
}
