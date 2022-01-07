
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int dummy; } ;


 int BIT (int ) ;
 int OV5640_REG_TIMING_TC_REG20 ;
 int OV5640_REG_TIMING_TC_REG21 ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int ,int ) ;

__attribute__((used)) static int ov5640_set_binning(struct ov5640_dev *sensor, bool enable)
{
 int ret;





 ret = ov5640_mod_reg(sensor, OV5640_REG_TIMING_TC_REG21,
        BIT(0), enable ? BIT(0) : 0);
 if (ret)
  return ret;





 return ov5640_mod_reg(sensor, OV5640_REG_TIMING_TC_REG20,
         BIT(0), enable ? BIT(0) : 0);
}
