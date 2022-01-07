
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int dummy; } ;


 int BIT (int) ;
 int OV5640_REG_AEC_PK_MANUAL ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int ,int ) ;

__attribute__((used)) static int ov5640_set_autogain(struct ov5640_dev *sensor, bool on)
{
 return ov5640_mod_reg(sensor, OV5640_REG_AEC_PK_MANUAL,
         BIT(1), on ? 0 : BIT(1));
}
