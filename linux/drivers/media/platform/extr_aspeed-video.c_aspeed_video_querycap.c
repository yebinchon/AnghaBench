
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 char* DEVICE_NAME ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static int aspeed_video_querycap(struct file *file, void *fh,
     struct v4l2_capability *cap)
{
 strscpy(cap->driver, DEVICE_NAME, sizeof(cap->driver));
 strscpy(cap->card, "Aspeed Video Engine", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   DEVICE_NAME);

 return 0;
}
