
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt3_board {scalar_t__* regs; } ;


 scalar_t__ REG_SYSTEM_W ;
 int iowrite32 (int,scalar_t__) ;

__attribute__((used)) static inline void pt3_lnb_ctrl(struct pt3_board *pt3, bool on)
{
 iowrite32((on ? 0x0f : 0x0c), pt3->regs[0] + REG_SYSTEM_W);
}
