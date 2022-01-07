
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;
struct camss_video {TYPE_1__* camss; } ;
struct TYPE_2__ {int dev; } ;


 char* dev_name (int ) ;
 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct camss_video* video_drvdata (struct file*) ;

__attribute__((used)) static int video_querycap(struct file *file, void *fh,
     struct v4l2_capability *cap)
{
 struct camss_video *video = video_drvdata(file);

 strscpy(cap->driver, "qcom-camss", sizeof(cap->driver));
 strscpy(cap->card, "Qualcomm Camera Subsystem", sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   dev_name(video->camss->dev));

 return 0;
}
