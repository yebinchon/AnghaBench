
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov7251 {int pre_isp_00; } ;
typedef scalar_t__ s32 ;


 int OV7251_PRE_ISP_00 ;
 int OV7251_PRE_ISP_00_TEST_PATTERN ;
 int ov7251_write_reg (struct ov7251*,int ,int ) ;

__attribute__((used)) static int ov7251_set_test_pattern(struct ov7251 *ov7251, s32 value)
{
 u8 val = ov7251->pre_isp_00;
 int ret;

 if (value)
  val |= OV7251_PRE_ISP_00_TEST_PATTERN;
 else
  val &= ~OV7251_PRE_ISP_00_TEST_PATTERN;

 ret = ov7251_write_reg(ov7251, OV7251_PRE_ISP_00, val);
 if (!ret)
  ov7251->pre_isp_00 = val;

 return ret;
}
