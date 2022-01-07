
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct go7007 {char* name; char* bus_info; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;
 struct go7007* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *cap)
{
 struct go7007 *go = video_drvdata(file);

 strscpy(cap->driver, "go7007", sizeof(cap->driver));
 strscpy(cap->card, go->name, sizeof(cap->card));
 strscpy(cap->bus_info, go->bus_info, sizeof(cap->bus_info));
 return 0;
}
