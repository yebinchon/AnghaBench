
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct omap_vout_device {int vid; TYPE_1__* vfd; } ;
struct file {int dummy; } ;
struct TYPE_2__ {char* name; } ;


 char* VOUT_NAME ;
 int snprintf (int ,int,char*,char*,int) ;
 int strscpy (int ,char*,int) ;
 struct omap_vout_device* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *fh,
  struct v4l2_capability *cap)
{
 struct omap_vout_device *vout = video_drvdata(file);

 strscpy(cap->driver, VOUT_NAME, sizeof(cap->driver));
 strscpy(cap->card, vout->vfd->name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "platform:%s.%d", VOUT_NAME, vout->vid);
 return 0;
}
