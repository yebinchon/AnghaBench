
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov2680_dev {int dummy; } ;


 int OV2680_REG_EXPOSURE_PK_HIGH ;
 int ov2680_read_reg24 (struct ov2680_dev*,int ,int*) ;

__attribute__((used)) static int ov2680_exposure_get(struct ov2680_dev *sensor)
{
 int ret;
 u32 exp;

 ret = ov2680_read_reg24(sensor, OV2680_REG_EXPOSURE_PK_HIGH, &exp);
 if (ret)
  return ret;

 return exp >> 4;
}
