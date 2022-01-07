
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fza_private {TYPE_1__* regs; } ;
struct TYPE_2__ {int reset; int control_b; } ;


 int FZA_CONTROL_B_IDLE ;
 int FZA_RESET_CLR ;
 int FZA_RESET_INIT ;
 int readw_o (int *) ;
 int writew_o (int ,int *) ;

__attribute__((used)) static inline void fza_do_shutdown(struct fza_private *fp)
{

 writew_o(FZA_CONTROL_B_IDLE, &fp->regs->control_b);


 writew_o(FZA_RESET_INIT, &fp->regs->reset);
 readw_o(&fp->regs->reset);
 writew_o(FZA_RESET_CLR, &fp->regs->reset);
 readw_o(&fp->regs->reset);
}
