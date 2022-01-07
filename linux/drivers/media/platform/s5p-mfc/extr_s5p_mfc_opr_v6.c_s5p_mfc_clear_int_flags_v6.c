
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_mfc_regs {int risc2host_int; int risc2host_command; } ;
struct s5p_mfc_dev {struct s5p_mfc_regs* mfc_regs; } ;


 int writel (int ,int ) ;

__attribute__((used)) static void s5p_mfc_clear_int_flags_v6(struct s5p_mfc_dev *dev)
{
 const struct s5p_mfc_regs *mfc_regs = dev->mfc_regs;
 writel(0, mfc_regs->risc2host_command);
 writel(0, mfc_regs->risc2host_int);
}
