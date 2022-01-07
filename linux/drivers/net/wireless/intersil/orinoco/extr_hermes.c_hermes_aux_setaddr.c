
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct hermes {int dummy; } ;


 int HERMES_AUXOFFSET ;
 int HERMES_AUXPAGE ;
 int hermes_write_reg (struct hermes*,int ,int ) ;

__attribute__((used)) static inline void
hermes_aux_setaddr(struct hermes *hw, u32 addr)
{
 hermes_write_reg(hw, HERMES_AUXPAGE, (u16) (addr >> 7));
 hermes_write_reg(hw, HERMES_AUXOFFSET, (u16) (addr & 0x7F));
}
