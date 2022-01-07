
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv6110x_state {int * regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;
typedef enum tuner_mode { ____Placeholder_tuner_mode } tuner_mode ;


 int CTRL1_LPT ;
 int CTRL1_RX ;
 int CTRL1_SYN ;
 int EIO ;
 int FE_ERROR ;
 size_t STV6110x_CTRL1 ;
 int STV6110x_SETFIELD (int ,int ,int) ;


 int dprintk (int ,int,char*) ;
 int stv6110x_write_reg (struct stv6110x_state*,size_t,int ) ;

__attribute__((used)) static int stv6110x_set_mode(struct dvb_frontend *fe, enum tuner_mode mode)
{
 struct stv6110x_state *stv6110x = fe->tuner_priv;
 int ret;

 switch (mode) {
 case 129:
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL1], CTRL1_SYN, 0);
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL1], CTRL1_RX, 0);
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL1], CTRL1_LPT, 0);
  break;

 case 128:
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL1], CTRL1_SYN, 1);
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL1], CTRL1_RX, 1);
  STV6110x_SETFIELD(stv6110x->regs[STV6110x_CTRL1], CTRL1_LPT, 1);
  break;
 }

 ret = stv6110x_write_reg(stv6110x, STV6110x_CTRL1, stv6110x->regs[STV6110x_CTRL1]);
 if (ret < 0) {
  dprintk(FE_ERROR, 1, "I/O Error");
  return -EIO;
 }

 return 0;
}
