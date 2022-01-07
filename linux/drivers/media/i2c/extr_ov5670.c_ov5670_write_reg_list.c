
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5670_reg_list {int num_of_regs; int regs; } ;
struct ov5670 {int dummy; } ;


 int ov5670_write_regs (struct ov5670*,int ,int ) ;

__attribute__((used)) static int ov5670_write_reg_list(struct ov5670 *ov5670,
     const struct ov5670_reg_list *r_list)
{
 return ov5670_write_regs(ov5670, r_list->regs, r_list->num_of_regs);
}
