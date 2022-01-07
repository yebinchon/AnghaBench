
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct em28xx {scalar_t__ em28xx_sensor; TYPE_1__* intf; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ EM28XX_NOSENSOR ;
 int ENODEV ;
 int dev_info (int *,char*) ;
 int em28xx_probe_sensor_micron (struct em28xx*) ;
 int em28xx_probe_sensor_omnivision (struct em28xx*) ;

int em28xx_detect_sensor(struct em28xx *dev)
{
 int ret;

 ret = em28xx_probe_sensor_micron(dev);

 if (dev->em28xx_sensor == EM28XX_NOSENSOR && ret < 0)
  ret = em28xx_probe_sensor_omnivision(dev);






 if (dev->em28xx_sensor == EM28XX_NOSENSOR && ret < 0) {
  dev_info(&dev->intf->dev,
    "No sensor detected\n");
  return -ENODEV;
 }

 return 0;
}
