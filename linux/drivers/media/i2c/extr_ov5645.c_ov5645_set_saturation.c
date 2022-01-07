
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov5645 {int dummy; } ;
typedef int s32 ;


 int OV5645_SDE_SAT_U ;
 int OV5645_SDE_SAT_V ;
 int ov5645_write_reg (struct ov5645*,int ,int) ;

__attribute__((used)) static int ov5645_set_saturation(struct ov5645 *ov5645, s32 value)
{
 u32 reg_value = (value * 0x10) + 0x40;
 int ret;

 ret = ov5645_write_reg(ov5645, OV5645_SDE_SAT_U, reg_value);
 if (ret < 0)
  return ret;

 return ov5645_write_reg(ov5645, OV5645_SDE_SAT_V, reg_value);
}
