
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov5695 {int client; } ;


 int OV5695_REG_TEST_PATTERN ;
 int OV5695_REG_VALUE_08BIT ;
 int OV5695_TEST_PATTERN_DISABLE ;
 int OV5695_TEST_PATTERN_ENABLE ;
 int ov5695_write_reg (int ,int ,int ,int) ;

__attribute__((used)) static int ov5695_enable_test_pattern(struct ov5695 *ov5695, u32 pattern)
{
 u32 val;

 if (pattern)
  val = (pattern - 1) | OV5695_TEST_PATTERN_ENABLE;
 else
  val = OV5695_TEST_PATTERN_DISABLE;

 return ov5695_write_reg(ov5695->client, OV5695_REG_TEST_PATTERN,
    OV5695_REG_VALUE_08BIT, val);
}
