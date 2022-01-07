
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lis3lv02d {int (* read ) (struct lis3lv02d*,int ,int*) ;int (* write ) (struct lis3lv02d*,int ,int) ;} ;


 int CTRL1_PD0 ;
 int CTRL1_Xen ;
 int CTRL1_Yen ;
 int CTRL1_Zen ;
 int CTRL_REG1 ;
 int stub1 (struct lis3lv02d*,int ,int*) ;
 int stub2 (struct lis3lv02d*,int ,int) ;

__attribute__((used)) static int lis3_spi_init(struct lis3lv02d *lis3)
{
 u8 reg;
 int ret;


 ret = lis3->read(lis3, CTRL_REG1, &reg);
 if (ret < 0)
  return ret;

 reg |= CTRL1_PD0 | CTRL1_Xen | CTRL1_Yen | CTRL1_Zen;
 return lis3->write(lis3, CTRL_REG1, reg);
}
