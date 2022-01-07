
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tda_state {int * m_Regs; } ;


 int WriteRegs (struct tda_state*,size_t,int *,size_t) ;

__attribute__((used)) static int UpdateRegs(struct tda_state *state, u8 RegFrom, u8 RegTo)
{
 return WriteRegs(state, RegFrom,
    &state->m_Regs[RegFrom], RegTo-RegFrom+1);
}
