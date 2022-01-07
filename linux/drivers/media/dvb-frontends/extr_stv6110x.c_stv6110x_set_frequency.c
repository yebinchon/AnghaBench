
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct stv6110x_state {int * regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;
typedef int s32 ;


 int CTRL1_K ;
 int LSB (int) ;
 int MSB (int) ;
 int REFCLOCK_MHz ;
 int REFCLOCK_kHz ;
 int R_DIV (int) ;
 int STAT1_CALVCO_STRT ;
 size_t STV6110x_CTRL1 ;
 int STV6110x_GETFIELD (int ,int ) ;
 int STV6110x_SETFIELD (int ,int ,int) ;
 size_t STV6110x_STAT1 ;
 size_t STV6110x_TNG0 ;
 size_t STV6110x_TNG1 ;
 int TNG0_N_DIV_7_0 ;
 int TNG1_DIV4SEL ;
 int TNG1_N_DIV_11_8 ;
 int TNG1_PRESC32_ON ;
 int TNG1_R_DIV ;
 scalar_t__ TRIALS ;
 scalar_t__ abs (int) ;
 int msleep (int) ;
 int stv6110x_read_reg (struct stv6110x_state*,size_t,int *) ;
 int stv6110x_write_reg (struct stv6110x_state*,size_t,int ) ;

__attribute__((used)) static int stv6110x_set_frequency(struct dvb_frontend *fe, u32 frequency)
{
 struct stv6110x_state *stv6110x = fe->tuner_priv;
 u32 rDiv, divider;
 s32 pVal, pCalc, rDivOpt = 0, pCalcOpt = 1000;
 u8 i;

 STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL1], CTRL1_K, (REFCLOCK_MHz - 16));

 if (frequency <= 1023000) {
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_DIV4SEL, 1);
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_PRESC32_ON, 0);
  pVal = 40;
 } else if (frequency <= 1300000) {
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_DIV4SEL, 1);
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_PRESC32_ON, 1);
  pVal = 40;
 } else if (frequency <= 2046000) {
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_DIV4SEL, 0);
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_PRESC32_ON, 0);
  pVal = 20;
 } else {
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_DIV4SEL, 0);
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_PRESC32_ON, 1);
  pVal = 20;
 }

 for (rDiv = 0; rDiv <= 3; rDiv++) {
  pCalc = (REFCLOCK_kHz / 100) / R_DIV(rDiv);

  if ((abs((s32)(pCalc - pVal))) < (abs((s32)(pCalcOpt - pVal))))
   rDivOpt = rDiv;

  pCalcOpt = (REFCLOCK_kHz / 100) / R_DIV(rDivOpt);
 }

 divider = (frequency * R_DIV(rDivOpt) * pVal) / REFCLOCK_kHz;
 divider = (divider + 5) / 10;

 STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_R_DIV, rDivOpt);
 STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG1], TNG1_N_DIV_11_8, MSB(divider));
 STV6110x_SETFIELD(stv6110x->regs[STV6110x_TNG0], TNG0_N_DIV_7_0, LSB(divider));


 STV6110x_SETFIELD(stv6110x->regs[STV6110x_STAT1], STAT1_CALVCO_STRT, 1);

 stv6110x_write_reg(stv6110x, STV6110x_CTRL1, stv6110x->regs[STV6110x_CTRL1]);
 stv6110x_write_reg(stv6110x, STV6110x_TNG1, stv6110x->regs[STV6110x_TNG1]);
 stv6110x_write_reg(stv6110x, STV6110x_TNG0, stv6110x->regs[STV6110x_TNG0]);
 stv6110x_write_reg(stv6110x, STV6110x_STAT1, stv6110x->regs[STV6110x_STAT1]);

 for (i = 0; i < TRIALS; i++) {
  stv6110x_read_reg(stv6110x, STV6110x_STAT1, &stv6110x->regs[STV6110x_STAT1]);
  if (!STV6110x_GETFIELD(STAT1_CALVCO_STRT, stv6110x->regs[STV6110x_STAT1]))
    break;
  msleep(1);
 }

 return 0;
}
