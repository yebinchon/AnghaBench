
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_demod_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_demod_state* demodulator_priv; } ;


 int kfree (struct mxl111sf_demod_state*) ;
 int mxl_dbg (char*) ;

__attribute__((used)) static void mxl111sf_demod_release(struct dvb_frontend *fe)
{
 struct mxl111sf_demod_state *state = fe->demodulator_priv;
 mxl_dbg("()");
 kfree(state);
 fe->demodulator_priv = ((void*)0);
}
