
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lis3lv02d {int (* reg_ctrl ) (struct lis3lv02d*,int ) ;int (* write ) (struct lis3lv02d*,int ,int) ;} ;


 int CTRL_REG1 ;
 int LIS3_REG_OFF ;
 int lis3_context_save (struct lis3lv02d*) ;
 int stub1 (struct lis3lv02d*,int ,int) ;
 int stub2 (struct lis3lv02d*,int ) ;

void lis3lv02d_poweroff(struct lis3lv02d *lis3)
{
 if (lis3->reg_ctrl)
  lis3_context_save(lis3);

 lis3->write(lis3, CTRL_REG1, 0x00);
 if (lis3->reg_ctrl)
  lis3->reg_ctrl(lis3, LIS3_REG_OFF);
}
