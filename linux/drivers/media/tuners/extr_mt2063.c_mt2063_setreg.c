
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct mt2063_state {size_t* reg; } ;


 int ERANGE ;
 size_t MT2063_REG_END_REGS ;
 int dprintk (int,char*) ;
 int mt2063_write (struct mt2063_state*,size_t,size_t*,int) ;

__attribute__((used)) static int mt2063_setreg(struct mt2063_state *state, u8 reg, u8 val)
{
 int status;

 dprintk(2, "\n");

 if (reg >= MT2063_REG_END_REGS)
  return -ERANGE;

 status = mt2063_write(state, reg, &val, 1);
 if (status < 0)
  return status;

 state->reg[reg] = val;

 return 0;
}
