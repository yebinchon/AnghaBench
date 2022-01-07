
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct TYPE_5__ {int sensor_flags; } ;
struct TYPE_4__ {int product; int device_type; } ;
struct TYPE_6__ {TYPE_2__ version; TYPE_1__ pnp_id; } ;
struct camera_data {int dev; TYPE_3__ params; } ;
 int memset (int ,int ,int) ;
 int strcat (int ,char*) ;
 int strscpy (int ,char*,int) ;
 scalar_t__ usb_make_path (int ,int ,int) ;
 struct camera_data* video_drvdata (struct file*) ;

__attribute__((used)) static int cpia2_querycap(struct file *file, void *fh, struct v4l2_capability *vc)
{
 struct camera_data *cam = video_drvdata(file);

 strscpy(vc->driver, "cpia2", sizeof(vc->driver));

 if (cam->params.pnp_id.product == 0x151)
  strscpy(vc->card, "QX5 Microscope", sizeof(vc->card));
 else
  strscpy(vc->card, "CPiA2 Camera", sizeof(vc->card));
 switch (cam->params.pnp_id.device_type) {
 case 129:
  strcat(vc->card, " (672/");
  break;
 case 128:
  strcat(vc->card, " (676/");
  break;
 default:
  strcat(vc->card, " (XXX/");
  break;
 }
 switch (cam->params.version.sensor_flags) {
 case 134:
  strcat(vc->card, "404)");
  break;
 case 133:
  strcat(vc->card, "407)");
  break;
 case 132:
  strcat(vc->card, "409)");
  break;
 case 131:
  strcat(vc->card, "410)");
  break;
 case 130:
  strcat(vc->card, "500)");
  break;
 default:
  strcat(vc->card, "XXX)");
  break;
 }

 if (usb_make_path(cam->dev, vc->bus_info, sizeof(vc->bus_info)) <0)
  memset(vc->bus_info,0, sizeof(vc->bus_info));
 return 0;
}
