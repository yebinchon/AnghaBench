
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8083_state {int dummy; } ;
struct dvb_frontend {struct tda8083_state* demodulator_priv; } ;


 int tda8083_writereg (struct tda8083_state*,int,int) ;

__attribute__((used)) static int tda8083_sleep(struct dvb_frontend* fe)
{
 struct tda8083_state* state = fe->demodulator_priv;

 tda8083_writereg (state, 0x00, 0x02);
 return 0;
}
