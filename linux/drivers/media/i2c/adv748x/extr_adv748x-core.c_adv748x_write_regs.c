
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_state {int dummy; } ;
struct adv748x_reg_value {scalar_t__ page; int reg; int value; } ;


 scalar_t__ ADV748X_PAGE_EOR ;
 int adv748x_write (struct adv748x_state*,scalar_t__,int ,int ) ;
 int adv_err (struct adv748x_state*,char*,scalar_t__,int ) ;

__attribute__((used)) static int adv748x_write_regs(struct adv748x_state *state,
         const struct adv748x_reg_value *regs)
{
 int ret;

 for (; regs->page != ADV748X_PAGE_EOR; regs++) {
  ret = adv748x_write(state, regs->page, regs->reg, regs->value);
  if (ret < 0) {
   adv_err(state, "Error regs page: 0x%02x reg: 0x%02x\n",
    regs->page, regs->reg);
   return ret;
  }
 }

 return 0;
}
