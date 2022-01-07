
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov5645 {int timing_tc_reg21; } ;
typedef scalar_t__ s32 ;


 int OV5645_SENSOR_MIRROR ;
 int OV5645_TIMING_TC_REG21 ;
 int ov5645_write_reg (struct ov5645*,int ,int ) ;

__attribute__((used)) static int ov5645_set_hflip(struct ov5645 *ov5645, s32 value)
{
 u8 val = ov5645->timing_tc_reg21;
 int ret;

 if (value == 0)
  val &= ~(OV5645_SENSOR_MIRROR);
 else
  val |= (OV5645_SENSOR_MIRROR);

 ret = ov5645_write_reg(ov5645, OV5645_TIMING_TC_REG21, val);
 if (!ret)
  ov5645->timing_tc_reg21 = val;

 return ret;
}
