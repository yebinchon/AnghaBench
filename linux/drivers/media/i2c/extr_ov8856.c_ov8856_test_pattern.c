
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov8856 {int dummy; } ;


 int OV8856_REG_TEST_PATTERN ;
 int OV8856_REG_VALUE_08BIT ;
 int OV8856_TEST_PATTERN_BAR_SHIFT ;
 int OV8856_TEST_PATTERN_ENABLE ;
 int ov8856_write_reg (struct ov8856*,int ,int ,int) ;

__attribute__((used)) static int ov8856_test_pattern(struct ov8856 *ov8856, u32 pattern)
{
 if (pattern)
  pattern = (pattern - 1) << OV8856_TEST_PATTERN_BAR_SHIFT |
     OV8856_TEST_PATTERN_ENABLE;

 return ov8856_write_reg(ov8856, OV8856_REG_TEST_PATTERN,
    OV8856_REG_VALUE_08BIT, pattern);
}
