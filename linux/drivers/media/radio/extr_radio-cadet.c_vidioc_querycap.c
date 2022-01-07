
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
 strscpy(v->driver, "ADS Cadet", sizeof(v->driver));
 strscpy(v->card, "ADS Cadet", sizeof(v->card));
 strscpy(v->bus_info, "ISA:radio-cadet", sizeof(v->bus_info));
 return 0;
}
