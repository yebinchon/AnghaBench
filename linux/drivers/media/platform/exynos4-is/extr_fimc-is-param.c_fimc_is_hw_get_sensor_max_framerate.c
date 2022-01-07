
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fimc_is {TYPE_2__* sensor; } ;
struct TYPE_4__ {TYPE_1__* drvdata; } ;
struct TYPE_3__ {int id; } ;




int fimc_is_hw_get_sensor_max_framerate(struct fimc_is *is)
{
 switch (is->sensor->drvdata->id) {
 case 128:
  return 30;
 default:
  return 15;
 }
}
