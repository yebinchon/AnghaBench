
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fza_private {TYPE_1__* regs; int name; } ;
struct TYPE_2__ {int control_b; int control_a; int int_mask; int status; int int_event; int reset; } ;


 int pr_debug (char*,int ) ;
 int readw_o (int *) ;
 int readw_u (int *) ;

__attribute__((used)) static inline void fza_regs_dump(struct fza_private *fp)
{
 pr_debug("%s: iomem registers:\n", fp->name);
 pr_debug(" reset:           0x%04x\n", readw_o(&fp->regs->reset));
 pr_debug(" interrupt event: 0x%04x\n", readw_u(&fp->regs->int_event));
 pr_debug(" status:          0x%04x\n", readw_u(&fp->regs->status));
 pr_debug(" interrupt mask:  0x%04x\n", readw_u(&fp->regs->int_mask));
 pr_debug(" control A:       0x%04x\n", readw_u(&fp->regs->control_a));
 pr_debug(" control B:       0x%04x\n", readw_u(&fp->regs->control_b));
}
