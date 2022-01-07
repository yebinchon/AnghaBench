
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int strscpy (int ,char*,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
     struct v4l2_capability *v)
{
 strscpy(v->driver, "radio-sf16fmi", sizeof(v->driver));
 strscpy(v->card, "SF16-FMI/FMP/FMD radio", sizeof(v->card));
 strscpy(v->bus_info, "ISA:radio-sf16fmi", sizeof(v->bus_info));
 return 0;
}
