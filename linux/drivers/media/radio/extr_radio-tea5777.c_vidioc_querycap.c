
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_capability {int bus_info; int card; int driver; } ;
struct radio_tea5777 {int bus_info; int card; TYPE_1__* v4l2_dev; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int name; } ;


 int strlcat (int ,char*,int) ;
 int strscpy (int ,int ,int) ;
 struct radio_tea5777* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *v)
{
 struct radio_tea5777 *tea = video_drvdata(file);

 strscpy(v->driver, tea->v4l2_dev->name, sizeof(v->driver));
 strscpy(v->card, tea->card, sizeof(v->card));
 strlcat(v->card, " TEA5777", sizeof(v->card));
 strscpy(v->bus_info, tea->bus_info, sizeof(v->bus_info));
 return 0;
}
