
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct stv6110x_state {int * regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;


 int STAT1_LOCK ;
 scalar_t__ STV6110x_GETFIELD (int ,int ) ;
 size_t STV6110x_STAT1 ;
 scalar_t__ TUNER_PHASELOCKED ;
 int stv6110x_read_reg (struct stv6110x_state*,size_t,int *) ;

__attribute__((used)) static int stv6110x_get_status(struct dvb_frontend *fe, u32 *status)
{
 struct stv6110x_state *stv6110x = fe->tuner_priv;

 stv6110x_read_reg(stv6110x, STV6110x_STAT1, &stv6110x->regs[STV6110x_STAT1]);

 if (STV6110x_GETFIELD(STAT1_LOCK, stv6110x->regs[STV6110x_STAT1]))
  *status = TUNER_PHASELOCKED;
 else
  *status = 0;

 return 0;
}
