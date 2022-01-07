
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv6110x_state {int regs; } ;
struct dvb_frontend {struct stv6110x_state* tuner_priv; } ;


 int ARRAY_SIZE (int ) ;
 int FE_ERROR ;
 int dprintk (int ,int,char*) ;
 int stv6110x_write_regs (struct stv6110x_state*,int ,int ,int ) ;

__attribute__((used)) static int stv6110x_init(struct dvb_frontend *fe)
{
 struct stv6110x_state *stv6110x = fe->tuner_priv;
 int ret;

 ret = stv6110x_write_regs(stv6110x, 0, stv6110x->regs,
      ARRAY_SIZE(stv6110x->regs));
 if (ret < 0) {
  dprintk(FE_ERROR, 1, "Initialization failed");
  return -1;
 }

 return 0;
}
