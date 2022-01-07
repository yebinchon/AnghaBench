
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct mt9v111_dev {int clk; int standby; int oe; } ;


 int clk_disable_unprepare (int ) ;
 int gpiod_set_value (int ,int) ;
 struct mt9v111_dev* sd_to_mt9v111 (struct v4l2_subdev*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int __mt9v111_power_off(struct v4l2_subdev *sd)
{
 struct mt9v111_dev *mt9v111 = sd_to_mt9v111(sd);

 gpiod_set_value(mt9v111->oe, 0);
 usleep_range(500, 1000);

 gpiod_set_value(mt9v111->standby, 1);
 usleep_range(500, 1000);

 clk_disable_unprepare(mt9v111->clk);

 return 0;
}
