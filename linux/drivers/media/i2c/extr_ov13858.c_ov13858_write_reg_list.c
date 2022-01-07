
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov13858_reg_list {int num_of_regs; int regs; } ;
struct ov13858 {int dummy; } ;


 int ov13858_write_regs (struct ov13858*,int ,int ) ;

__attribute__((used)) static int ov13858_write_reg_list(struct ov13858 *ov13858,
      const struct ov13858_reg_list *r_list)
{
 return ov13858_write_regs(ov13858, r_list->regs, r_list->num_of_regs);
}
