
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct TYPE_2__ {char* name; } ;
struct isc_device {TYPE_1__ v4l2_dev; } ;
struct file {int dummy; } ;


 char* ATMEL_ISC_NAME ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct isc_device* video_drvdata (struct file*) ;

__attribute__((used)) static int isc_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 struct isc_device *isc = video_drvdata(file);

 strscpy(cap->driver, ATMEL_ISC_NAME, sizeof(cap->driver));
 strscpy(cap->card, "Atmel Image Sensor Controller", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info),
   "platform:%s", isc->v4l2_dev.name);

 return 0;
}
