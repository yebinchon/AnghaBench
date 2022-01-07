
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov5645 {int timing_tc_reg20; } ;
typedef scalar_t__ s32 ;


 int OV5645_ISP_VFLIP ;
 int OV5645_SENSOR_VFLIP ;
 int OV5645_TIMING_TC_REG20 ;
 int ov5645_write_reg (struct ov5645*,int ,int) ;

__attribute__((used)) static int ov5645_set_vflip(struct ov5645 *ov5645, s32 value)
{
 u8 val = ov5645->timing_tc_reg20;
 int ret;

 if (value == 0)
  val |= (OV5645_SENSOR_VFLIP | OV5645_ISP_VFLIP);
 else
  val &= ~(OV5645_SENSOR_VFLIP | OV5645_ISP_VFLIP);

 ret = ov5645_write_reg(ov5645, OV5645_TIMING_TC_REG20, val);
 if (!ret)
  ov5645->timing_tc_reg20 = val;

 return ret;
}
