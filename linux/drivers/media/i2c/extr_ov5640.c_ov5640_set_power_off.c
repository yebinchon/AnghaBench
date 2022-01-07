
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int xclk; int supplies; } ;


 int OV5640_NUM_SUPPLIES ;
 int clk_disable_unprepare (int ) ;
 int ov5640_power (struct ov5640_dev*,int) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static void ov5640_set_power_off(struct ov5640_dev *sensor)
{
 ov5640_power(sensor, 0);
 regulator_bulk_disable(OV5640_NUM_SUPPLIES, sensor->supplies);
 clk_disable_unprepare(sensor->xclk);
}
