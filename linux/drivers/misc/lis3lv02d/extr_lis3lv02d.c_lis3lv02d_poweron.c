
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lis3lv02d {scalar_t__ whoami; scalar_t__ reg_ctrl; int (* write ) (struct lis3lv02d*,int ,int) ;int (* read ) (struct lis3lv02d*,int ,int*) ;scalar_t__ pdata; int (* init ) (struct lis3lv02d*) ;} ;


 int CTRL2_BDU ;
 int CTRL2_BOOT ;
 int CTRL2_BOOT_3DLH ;
 int CTRL2_BOOT_8B ;
 int CTRL4_BDU ;
 int CTRL_REG2 ;
 int CTRL_REG4 ;
 scalar_t__ WAI_12B ;
 scalar_t__ WAI_3DLH ;
 int lis3_context_restore (struct lis3lv02d*) ;
 int lis3lv02d_get_pwron_wait (struct lis3lv02d*) ;
 int stub1 (struct lis3lv02d*) ;
 int stub2 (struct lis3lv02d*,int ,int*) ;
 int stub3 (struct lis3lv02d*,int ,int) ;
 int stub4 (struct lis3lv02d*,int ,int*) ;
 int stub5 (struct lis3lv02d*,int ,int) ;

int lis3lv02d_poweron(struct lis3lv02d *lis3)
{
 int err;
 u8 reg;

 lis3->init(lis3);







 if (lis3->pdata) {
  lis3->read(lis3, CTRL_REG2, &reg);
  if (lis3->whoami == WAI_12B)
   reg |= CTRL2_BDU | CTRL2_BOOT;
  else if (lis3->whoami == WAI_3DLH)
   reg |= CTRL2_BOOT_3DLH;
  else
   reg |= CTRL2_BOOT_8B;
  lis3->write(lis3, CTRL_REG2, reg);

  if (lis3->whoami == WAI_3DLH) {
   lis3->read(lis3, CTRL_REG4, &reg);
   reg |= CTRL4_BDU;
   lis3->write(lis3, CTRL_REG4, reg);
  }
 }

 err = lis3lv02d_get_pwron_wait(lis3);
 if (err)
  return err;

 if (lis3->reg_ctrl)
  lis3_context_restore(lis3);

 return 0;
}
