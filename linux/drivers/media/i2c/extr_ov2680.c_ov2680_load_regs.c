
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct reg_value {int val; int reg_addr; } ;
struct ov2680_mode_info {unsigned int reg_data_size; struct reg_value* reg_data; } ;
struct ov2680_dev {int dummy; } ;


 int ov2680_write_reg (struct ov2680_dev*,int ,int ) ;

__attribute__((used)) static int ov2680_load_regs(struct ov2680_dev *sensor,
       const struct ov2680_mode_info *mode)
{
 const struct reg_value *regs = mode->reg_data;
 unsigned int i;
 int ret = 0;
 u16 reg_addr;
 u8 val;

 for (i = 0; i < mode->reg_data_size; ++i, ++regs) {
  reg_addr = regs->reg_addr;
  val = regs->val;

  ret = ov2680_write_reg(sensor, reg_addr, val);
  if (ret)
   break;
 }

 return ret;
}
