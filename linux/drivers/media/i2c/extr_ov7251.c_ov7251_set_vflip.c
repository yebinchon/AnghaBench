
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ov7251 {int timing_format1; } ;
typedef scalar_t__ s32 ;


 int OV7251_TIMING_FORMAT1 ;
 int OV7251_TIMING_FORMAT1_VFLIP ;
 int ov7251_write_reg (struct ov7251*,int ,int ) ;

__attribute__((used)) static int ov7251_set_vflip(struct ov7251 *ov7251, s32 value)
{
 u8 val = ov7251->timing_format1;
 int ret;

 if (value)
  val |= OV7251_TIMING_FORMAT1_VFLIP;
 else
  val &= ~OV7251_TIMING_FORMAT1_VFLIP;

 ret = ov7251_write_reg(ov7251, OV7251_TIMING_FORMAT1, val);
 if (!ret)
  ov7251->timing_format1 = val;

 return ret;
}
