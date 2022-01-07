
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int dummy; } ;


 int OV5640_REG_PRE_ISP_TEST_SET1 ;
 int ov5640_write_reg (struct ov5640_dev*,int ,int ) ;
 int * test_pattern_val ;

__attribute__((used)) static int ov5640_set_ctrl_test_pattern(struct ov5640_dev *sensor, int value)
{
 return ov5640_write_reg(sensor, OV5640_REG_PRE_ISP_TEST_SET1,
    test_pattern_val[value]);
}
