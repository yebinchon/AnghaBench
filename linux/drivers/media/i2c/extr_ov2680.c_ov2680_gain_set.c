
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ov2680_ctrls {TYPE_1__* gain; } ;
struct ov2680_dev {struct ov2680_ctrls ctrls; } ;
struct TYPE_2__ {int val; int is_new; } ;


 int BIT (int) ;
 int OV2680_REG_GAIN_PK ;
 int OV2680_REG_R_MANUAL ;
 int ov2680_mod_reg (struct ov2680_dev*,int ,int ,int ) ;
 int ov2680_write_reg16 (struct ov2680_dev*,int ,int ) ;

__attribute__((used)) static int ov2680_gain_set(struct ov2680_dev *sensor, bool auto_gain)
{
 struct ov2680_ctrls *ctrls = &sensor->ctrls;
 u32 gain;
 int ret;

 ret = ov2680_mod_reg(sensor, OV2680_REG_R_MANUAL, BIT(1),
        auto_gain ? 0 : BIT(1));
 if (ret < 0)
  return ret;

 if (auto_gain || !ctrls->gain->is_new)
  return 0;

 gain = ctrls->gain->val;

 ret = ov2680_write_reg16(sensor, OV2680_REG_GAIN_PK, gain);

 return 0;
}
