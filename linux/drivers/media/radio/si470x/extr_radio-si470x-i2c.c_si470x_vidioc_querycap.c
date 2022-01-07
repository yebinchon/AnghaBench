
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int card; int driver; } ;
struct file {int dummy; } ;


 int DRIVER_CARD ;
 int DRIVER_NAME ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int si470x_vidioc_querycap(struct file *file, void *priv,
      struct v4l2_capability *capability)
{
 strscpy(capability->driver, DRIVER_NAME, sizeof(capability->driver));
 strscpy(capability->card, DRIVER_CARD, sizeof(capability->card));
 return 0;
}
