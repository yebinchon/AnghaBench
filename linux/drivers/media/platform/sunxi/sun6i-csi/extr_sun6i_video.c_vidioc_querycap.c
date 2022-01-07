
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct TYPE_8__ {char* name; } ;
struct sun6i_video {TYPE_3__* csi; TYPE_4__ vdev; } ;
struct file {int dummy; } ;
struct TYPE_7__ {TYPE_2__* dev; } ;
struct TYPE_6__ {TYPE_1__* of_node; } ;
struct TYPE_5__ {char* name; } ;


 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct sun6i_video* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *cap)
{
 struct sun6i_video *video = video_drvdata(file);

 strscpy(cap->driver, "sun6i-video", sizeof(cap->driver));
 strscpy(cap->card, video->vdev.name, sizeof(cap->card));
 snprintf(cap->bus_info, sizeof(cap->bus_info), "platform:%s",
   video->csi->dev->of_node->name);

 return 0;
}
