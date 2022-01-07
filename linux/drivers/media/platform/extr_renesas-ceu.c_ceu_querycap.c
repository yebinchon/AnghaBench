
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int driver; int card; } ;
struct file {int dummy; } ;
struct ceu_device {int dev; } ;


 char* DRIVER_NAME ;
 char* dev_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_querycap(struct file *file, void *priv,
   struct v4l2_capability *cap)
{
 struct ceu_device *ceudev = video_drvdata(file);

 strscpy(cap->card, "Renesas CEU", sizeof(cap->card));
 strscpy(cap->driver, DRIVER_NAME, sizeof(cap->driver));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "platform:renesas-ceu-%s", dev_name(ceudev->dev));

 return 0;
}
