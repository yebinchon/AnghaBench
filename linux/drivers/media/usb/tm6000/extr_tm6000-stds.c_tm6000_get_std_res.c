
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm6000_core {int norm; int height; int width; } ;


 int V4L2_STD_525_60 ;

void tm6000_get_std_res(struct tm6000_core *dev)
{

 if (dev->norm & V4L2_STD_525_60)
  dev->height = 480;
 else
  dev->height = 576;

 dev->width = 720;
}
