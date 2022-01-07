
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct TYPE_2__ {char* name; } ;
struct pcm20 {TYPE_1__ v4l2_dev; } ;
struct file {int dummy; } ;


 int snprintf (int ,int,char*,char*) ;
 int strscpy (int ,char*,int) ;
 struct pcm20* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
    struct v4l2_capability *v)
{
 struct pcm20 *dev = video_drvdata(file);

 strscpy(v->driver, "Miro PCM20", sizeof(v->driver));
 strscpy(v->card, "Miro PCM20", sizeof(v->card));
 snprintf(v->bus_info, sizeof(v->bus_info), "ISA:%s", dev->v4l2_dev.name);
 return 0;
}
