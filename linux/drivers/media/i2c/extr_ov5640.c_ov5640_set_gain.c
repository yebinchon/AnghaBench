
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ov5640_dev {int dummy; } ;


 int OV5640_REG_AEC_PK_REAL_GAIN ;
 int ov5640_write_reg16 (struct ov5640_dev*,int ,int) ;

__attribute__((used)) static int ov5640_set_gain(struct ov5640_dev *sensor, int gain)
{
 return ov5640_write_reg16(sensor, OV5640_REG_AEC_PK_REAL_GAIN,
      (u16)gain & 0x3ff);
}
