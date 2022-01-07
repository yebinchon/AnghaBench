
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_capability {int bus_info; int card; int driver; } ;
struct file {int dummy; } ;


 int FM_DRV_CARD_SHORT_NAME ;
 int FM_DRV_NAME ;
 int sprintf (int ,char*) ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int fm_v4l2_vidioc_querycap(struct file *file, void *priv,
  struct v4l2_capability *capability)
{
 strscpy(capability->driver, FM_DRV_NAME, sizeof(capability->driver));
 strscpy(capability->card, FM_DRV_CARD_SHORT_NAME,
  sizeof(capability->card));
 sprintf(capability->bus_info, "UART");
 return 0;
}
