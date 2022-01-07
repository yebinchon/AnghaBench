
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ov5670 {int dummy; } ;


 int OV5670_REG_TEST_PATTERN ;
 int OV5670_REG_TEST_PATTERN_CTRL ;
 int OV5670_REG_VALUE_08BIT ;
 scalar_t__ OV5670_TEST_PATTERN_ENABLE ;
 int ov5670_read_reg (struct ov5670*,int ,int ,scalar_t__*) ;
 int ov5670_write_reg (struct ov5670*,int ,int ,scalar_t__) ;

__attribute__((used)) static int ov5670_enable_test_pattern(struct ov5670 *ov5670, u32 pattern)
{
 u32 val;
 int ret;


 ret = ov5670_write_reg(ov5670, OV5670_REG_TEST_PATTERN_CTRL,
          OV5670_REG_VALUE_08BIT, 0);
 if (ret)
  return ret;

 ret = ov5670_read_reg(ov5670, OV5670_REG_TEST_PATTERN,
         OV5670_REG_VALUE_08BIT, &val);
 if (ret)
  return ret;

 if (pattern)
  val |= OV5670_TEST_PATTERN_ENABLE;
 else
  val &= ~OV5670_TEST_PATTERN_ENABLE;

 return ov5670_write_reg(ov5670, OV5670_REG_TEST_PATTERN,
    OV5670_REG_VALUE_08BIT, val);
}
