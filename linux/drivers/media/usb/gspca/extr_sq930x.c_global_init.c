
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sd {int sensor; int gspca_dev; int type; } ;
struct TYPE_2__ {int gpio; } ;


 int ARRAY_SIZE (int ) ;
 int Creative_live_motion ;



 int SQ930_GPIO_EXTRA1 ;
 int SQ930_GPIO_EXTRA2 ;
 int gpio_init (struct sd*,int ) ;
 int gpio_set (struct sd*,int,int) ;
 int icx098bq_start_0 ;
 int lz24bp_start_0 ;
 int mi0360_start_0 ;
 int msleep (int) ;
 int mt9v111_init (int *) ;
 TYPE_1__* sensor_tb ;
 int ucbus_write (int *,int ,int,int) ;

__attribute__((used)) static void global_init(struct sd *sd, int first_time)
{
 switch (sd->sensor) {
 case 130:
  if (first_time)
   ucbus_write(&sd->gspca_dev,
     icx098bq_start_0,
     8, 8);
  gpio_init(sd, sensor_tb[sd->sensor].gpio);
  break;
 case 129:
  if (sd->type != Creative_live_motion)
   gpio_set(sd, SQ930_GPIO_EXTRA1, 0x00ff);
  else
   gpio_set(sd, 0, 0x00ff);
  msleep(50);
  if (first_time)
   ucbus_write(&sd->gspca_dev,
     lz24bp_start_0,
     8, 8);
  gpio_init(sd, sensor_tb[sd->sensor].gpio);
  break;
 case 128:
  if (first_time)
   ucbus_write(&sd->gspca_dev,
     mi0360_start_0,
     ARRAY_SIZE(mi0360_start_0),
     8);
  gpio_init(sd, sensor_tb[sd->sensor].gpio);
  gpio_set(sd, SQ930_GPIO_EXTRA2, SQ930_GPIO_EXTRA2);
  break;
 default:

  if (first_time)
   mt9v111_init(&sd->gspca_dev);
  else
   gpio_init(sd, sensor_tb[sd->sensor].gpio);
  break;
 }
}
