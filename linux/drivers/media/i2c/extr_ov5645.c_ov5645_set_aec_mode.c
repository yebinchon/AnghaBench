
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct ov5645 {int aec_pk_manual; } ;


 int OV5645_AEC_MANUAL_ENABLE ;
 int OV5645_AEC_PK_MANUAL ;
 scalar_t__ V4L2_EXPOSURE_AUTO ;
 int ov5645_write_reg (struct ov5645*,int ,int ) ;

__attribute__((used)) static int ov5645_set_aec_mode(struct ov5645 *ov5645, u32 mode)
{
 u8 val = ov5645->aec_pk_manual;
 int ret;

 if (mode == V4L2_EXPOSURE_AUTO)
  val &= ~OV5645_AEC_MANUAL_ENABLE;
 else
  val |= OV5645_AEC_MANUAL_ENABLE;

 ret = ov5645_write_reg(ov5645, OV5645_AEC_PK_MANUAL, val);
 if (!ret)
  ov5645->aec_pk_manual = val;

 return ret;
}
