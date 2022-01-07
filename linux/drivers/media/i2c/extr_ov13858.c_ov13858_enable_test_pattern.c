
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov13858 {int dummy; } ;


 int OV13858_REG_TEST_PATTERN ;
 int OV13858_REG_VALUE_08BIT ;
 int OV13858_TEST_PATTERN_ENABLE ;
 int OV13858_TEST_PATTERN_MASK ;
 int ov13858_read_reg (struct ov13858*,int ,int ,int*) ;
 int ov13858_write_reg (struct ov13858*,int ,int ,int) ;

__attribute__((used)) static int ov13858_enable_test_pattern(struct ov13858 *ov13858, u32 pattern)
{
 int ret;
 u32 val;

 ret = ov13858_read_reg(ov13858, OV13858_REG_TEST_PATTERN,
          OV13858_REG_VALUE_08BIT, &val);
 if (ret)
  return ret;

 if (pattern) {
  val &= OV13858_TEST_PATTERN_MASK;
  val |= (pattern - 1) | OV13858_TEST_PATTERN_ENABLE;
 } else {
  val &= ~OV13858_TEST_PATTERN_ENABLE;
 }

 return ov13858_write_reg(ov13858, OV13858_REG_TEST_PATTERN,
     OV13858_REG_VALUE_08BIT, val);
}
