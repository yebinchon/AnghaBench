
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv6110x_state {int * regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;


 int CTRL3_CF ;
 size_t STV6110x_CTRL3 ;
 int STV6110x_GETFIELD (int ,int ) ;
 int stv6110x_read_reg (struct stv6110x_state*,size_t,int *) ;

__attribute__((used)) static int stv6110x_get_bandwidth(struct dvb_frontend *fe, u32 *bandwidth)
{
 struct stv6110x_state *stv6110x = fe->tuner_priv;

 stv6110x_read_reg(stv6110x, STV6110x_CTRL3, &stv6110x->regs[STV6110x_CTRL3]);
 *bandwidth = (STV6110x_GETFIELD(CTRL3_CF, stv6110x->regs[STV6110x_CTRL3]) + 5) * 2000000;

 return 0;
}
