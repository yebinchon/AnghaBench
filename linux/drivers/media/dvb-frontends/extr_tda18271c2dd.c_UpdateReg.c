
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct tda_state {int * m_Regs; } ;


 int WriteReg (struct tda_state*,size_t,int ) ;

__attribute__((used)) static int UpdateReg(struct tda_state *state, u8 Reg)
{
 return WriteReg(state, Reg, state->m_Regs[Reg]);
}
