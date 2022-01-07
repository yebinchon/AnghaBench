
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd {scalar_t__ sensor; } ;
struct gspca_dev {int dummy; } ;


 scalar_t__ SENSOR_MT9V111 ;
 int SQ930_GPIO_DFL_LED ;
 int gpio_set (struct sd*,int ,int ) ;
 int send_stop (struct gspca_dev*) ;

__attribute__((used)) static void sd_stopN(struct gspca_dev *gspca_dev)
{
 struct sd *sd = (struct sd *) gspca_dev;

 if (sd->sensor == SENSOR_MT9V111)
  gpio_set(sd, 0, SQ930_GPIO_DFL_LED);
 send_stop(gspca_dev);
}
