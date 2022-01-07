
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tda10021_state {int pwm; } ;
struct dvb_frontend {TYPE_1__* adapter; struct tda10021_state* demodulator_priv; } ;
struct TYPE_2__ {int num; } ;


 int _tda10021_writereg (struct tda10021_state*,int,int) ;
 int dprintk (char*,int ) ;
 int* tda10021_inittab ;
 int tda10021_inittab_size ;

__attribute__((used)) static int tda10021_init (struct dvb_frontend *fe)
{
 struct tda10021_state* state = fe->demodulator_priv;
 int i;

 dprintk("DVB: TDA10021(%d): init chip\n", fe->adapter->num);



 for (i=0; i<tda10021_inittab_size; i++)
  _tda10021_writereg (state, i, tda10021_inittab[i]);

 _tda10021_writereg (state, 0x34, state->pwm);
 _tda10021_writereg(state, 0x2a, tda10021_inittab[0x2a] & 0xef);
 return 0;
}
