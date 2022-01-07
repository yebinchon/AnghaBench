
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_channel {int* regs; } ;


 int DTR ;
 int R5 ;
 int RTS ;
 int write_zsreg (struct z8530_channel*,int ,int) ;

__attribute__((used)) static void z8530_rtsdtr(struct z8530_channel *c, int set)
{
 if (set)
  c->regs[5] |= (RTS | DTR);
 else
  c->regs[5] &= ~(RTS | DTR);
 write_zsreg(c, R5, c->regs[5]);
}
