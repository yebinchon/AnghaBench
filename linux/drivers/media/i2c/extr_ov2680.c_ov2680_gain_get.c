
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ov2680_dev {int dummy; } ;


 int OV2680_REG_GAIN_PK ;
 int ov2680_read_reg16 (struct ov2680_dev*,int ,int*) ;

__attribute__((used)) static int ov2680_gain_get(struct ov2680_dev *sensor)
{
 u32 gain;
 int ret;

 ret = ov2680_read_reg16(sensor, OV2680_REG_GAIN_PK, &gain);
 if (ret)
  return ret;

 return gain;
}
