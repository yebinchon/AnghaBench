
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov2680_dev {int dummy; } ;


 int BIT (int) ;
 int OV2680_REG_FORMAT2 ;
 int ov2680_bayer_order (struct ov2680_dev*) ;
 int ov2680_mod_reg (struct ov2680_dev*,int ,int ,int ) ;

__attribute__((used)) static int ov2680_hflip_enable(struct ov2680_dev *sensor)
{
 int ret;

 ret = ov2680_mod_reg(sensor, OV2680_REG_FORMAT2, BIT(2), BIT(2));
 if (ret < 0)
  return ret;

 return ov2680_bayer_order(sensor);
}
