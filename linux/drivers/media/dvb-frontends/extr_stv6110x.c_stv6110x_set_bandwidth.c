
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct stv6110x_state {int * regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;


 int CTRL3_CF ;
 int CTRL3_RCCLK_OFF ;
 int STAT1_CALRC_STRT ;
 size_t STV6110x_CTRL3 ;
 int STV6110x_GETFIELD (int ,int ) ;
 int STV6110x_SETFIELD (int ,int ,int) ;
 size_t STV6110x_STAT1 ;
 scalar_t__ TRIALS ;
 int msleep (int) ;
 int stv6110x_read_reg (struct stv6110x_state*,size_t,int *) ;
 int stv6110x_write_reg (struct stv6110x_state*,size_t,int ) ;

__attribute__((used)) static int stv6110x_set_bandwidth(struct dvb_frontend *fe, u32 bandwidth)
{
 struct stv6110x_state *stv6110x = fe->tuner_priv;
 u32 halfbw;
 u8 i;

 halfbw = bandwidth >> 1;

 if (halfbw > 36000000)
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL3], CTRL3_CF, 31);
 else if (halfbw < 5000000)
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL3], CTRL3_CF, 0);
 else
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL3], CTRL3_CF, ((halfbw / 1000000) - 5));


 STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL3], CTRL3_RCCLK_OFF, 0x0);
 STV6110x_SETFIELD(stv6110x->regs[STV6110x_STAT1], STAT1_CALRC_STRT, 0x1);

 stv6110x_write_reg(stv6110x, STV6110x_CTRL3, stv6110x->regs[STV6110x_CTRL3]);
 stv6110x_write_reg(stv6110x, STV6110x_STAT1, stv6110x->regs[STV6110x_STAT1]);

 for (i = 0; i < TRIALS; i++) {
  stv6110x_read_reg(stv6110x, STV6110x_STAT1, &stv6110x->regs[STV6110x_STAT1]);
  if (!STV6110x_GETFIELD(STAT1_CALRC_STRT, stv6110x->regs[STV6110x_STAT1]))
   break;
  msleep(1);
 }
 STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL3], CTRL3_RCCLK_OFF, 0x1);
 stv6110x_write_reg(stv6110x, STV6110x_CTRL3, stv6110x->regs[STV6110x_CTRL3]);

 return 0;
}
