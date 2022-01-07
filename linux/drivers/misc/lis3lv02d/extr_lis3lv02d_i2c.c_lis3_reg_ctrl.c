
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int regulators; } ;


 int ARRAY_SIZE (int ) ;
 int LIS3_REG_OFF ;
 int regulator_bulk_disable (int ,int ) ;
 int regulator_bulk_enable (int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int lis3_reg_ctrl(struct lis3lv02d *lis3, bool state)
{
 int ret;
 if (state == LIS3_REG_OFF) {
  ret = regulator_bulk_disable(ARRAY_SIZE(lis3->regulators),
     lis3->regulators);
 } else {
  ret = regulator_bulk_enable(ARRAY_SIZE(lis3->regulators),
     lis3->regulators);

  usleep_range(10000, 20000);
 }
 return ret;
}
