
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fza_private {TYPE_1__* regs; int int_mask; } ;
struct TYPE_2__ {int int_mask; int reset; } ;


 int FZA_RESET_CLR ;
 int FZA_RESET_INIT ;
 int readw_o (int *) ;
 int writew_o (int ,int *) ;

__attribute__((used)) static inline void fza_do_reset(struct fza_private *fp)
{

 writew_o(FZA_RESET_INIT, &fp->regs->reset);
 readw_o(&fp->regs->reset);
 readw_o(&fp->regs->reset);
 writew_o(FZA_RESET_CLR, &fp->regs->reset);


 writew_o(fp->int_mask, &fp->regs->int_mask);
 readw_o(&fp->regs->int_mask);
}
