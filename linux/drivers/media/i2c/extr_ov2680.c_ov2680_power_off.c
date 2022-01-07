
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov2680_dev {int is_enabled; int supplies; int xvclk; } ;


 int OV2680_NUM_SUPPLIES ;
 int clk_disable_unprepare (int ) ;
 int ov2680_power_down (struct ov2680_dev*) ;
 int regulator_bulk_disable (int ,int ) ;

__attribute__((used)) static int ov2680_power_off(struct ov2680_dev *sensor)
{
 if (!sensor->is_enabled)
  return 0;

 clk_disable_unprepare(sensor->xvclk);
 ov2680_power_down(sensor);
 regulator_bulk_disable(OV2680_NUM_SUPPLIES, sensor->supplies);
 sensor->is_enabled = 0;

 return 0;
}
