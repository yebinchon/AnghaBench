
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov5675 {int dummy; } ;


 int OV5675_REG_TEST_PATTERN ;
 int OV5675_REG_VALUE_08BIT ;
 int OV5675_TEST_PATTERN_BAR_SHIFT ;
 int OV5675_TEST_PATTERN_ENABLE ;
 int ov5675_write_reg (struct ov5675*,int ,int ,int) ;

__attribute__((used)) static int ov5675_test_pattern(struct ov5675 *ov5675, u32 pattern)
{
 if (pattern)
  pattern = (pattern - 1) << OV5675_TEST_PATTERN_BAR_SHIFT |
     OV5675_TEST_PATTERN_ENABLE;

 return ov5675_write_reg(ov5675, OV5675_REG_TEST_PATTERN,
    OV5675_REG_VALUE_08BIT, pattern);
}
