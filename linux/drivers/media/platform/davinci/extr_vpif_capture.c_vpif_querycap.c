
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vpif_capture_config {int card_name; } ;
struct v4l2_capability {int card; int bus_info; int driver; } ;
struct file {int dummy; } ;
struct TYPE_3__ {struct vpif_capture_config* platform_data; } ;


 int VPIF_DRIVER_NAME ;
 char* dev_name (TYPE_1__*) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,int ,int) ;
 TYPE_1__* vpif_dev ;

__attribute__((used)) static int vpif_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 struct vpif_capture_config *config = vpif_dev->platform_data;

 strscpy(cap->driver, VPIF_DRIVER_NAME, sizeof(cap->driver));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   dev_name(vpif_dev));
 strscpy(cap->card, config->card_name, sizeof(cap->card));

 return 0;
}
