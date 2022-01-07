
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5640_dev {int upside_down; } ;


 int BIT (int) ;
 int OV5640_REG_TIMING_TC_REG20 ;
 int ov5640_mod_reg (struct ov5640_dev*,int ,int,int) ;

__attribute__((used)) static int ov5640_set_ctrl_vflip(struct ov5640_dev *sensor, int value)
{







 return ov5640_mod_reg(sensor, OV5640_REG_TIMING_TC_REG20,
         BIT(2) | BIT(1),
         (value ^ sensor->upside_down) ?
         (BIT(2) | BIT(1)) : 0);
}
