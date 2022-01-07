
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ves1x93_state {int dummy; } ;
struct dvb_frontend {struct ves1x93_state* demodulator_priv; } ;


 int ves1x93_writereg (struct ves1x93_state*,int,int) ;

__attribute__((used)) static int ves1x93_sleep(struct dvb_frontend* fe)
{
 struct ves1x93_state* state = fe->demodulator_priv;

 return ves1x93_writereg (state, 0x00, 0x08);
}
