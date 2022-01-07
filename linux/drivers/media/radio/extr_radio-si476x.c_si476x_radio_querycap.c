
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct TYPE_2__ {char* name; } ;
struct si476x_radio {TYPE_1__ v4l2dev; } ;
struct file {int dummy; } ;


 char* DRIVER_CARD ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct si476x_radio* video_drvdata (struct file*) ;

__attribute__((used)) static int si476x_radio_querycap(struct file *file, void *priv,
     struct v4l2_capability *capability)
{
 struct si476x_radio *radio = video_drvdata(file);

 strscpy(capability->driver, radio->v4l2dev.name,
  sizeof(capability->driver));
 strscpy(capability->card, DRIVER_CARD, sizeof(capability->card));
 snprintf(capability->bus_info, sizeof(capability->bus_info),
   "platform:%s", radio->v4l2dev.name);
 return 0;
}
