
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov5645 {int dummy; } ;
typedef int s32 ;


 int OV5645_AWB_MANUAL_CONTROL ;
 int OV5645_AWB_MANUAL_ENABLE ;
 int ov5645_write_reg (struct ov5645*,int ,int ) ;

__attribute__((used)) static int ov5645_set_awb(struct ov5645 *ov5645, s32 enable_auto)
{
 u8 val = 0;

 if (!enable_auto)
  val = OV5645_AWB_MANUAL_ENABLE;

 return ov5645_write_reg(ov5645, OV5645_AWB_MANUAL_CONTROL, val);
}
