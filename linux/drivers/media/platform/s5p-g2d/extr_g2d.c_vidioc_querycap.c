
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {scalar_t__* bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int G2D_NAME ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_querycap(struct file *file, void *priv,
    struct v4l2_capability *cap)
{
 strscpy(cap->driver, G2D_NAME, sizeof(cap->driver));
 strscpy(cap->card, G2D_NAME, sizeof(cap->card));
 cap->bus_info[0] = 0;
 return 0;
}
