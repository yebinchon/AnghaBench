
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxl111sf_state {int dummy; } ;
struct dvb_frontend {struct mxl111sf_demod_state* demodulator_priv; int ops; } ;
struct mxl111sf_demod_state {struct dvb_frontend fe; struct mxl111sf_demod_config const* cfg; struct mxl111sf_state* mxl_state; } ;
struct mxl111sf_demod_config {int dummy; } ;
struct dvb_frontend_ops {int dummy; } ;


 int GFP_KERNEL ;
 struct mxl111sf_demod_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mxl111sf_demod_ops ;
 int mxl_dbg (char*) ;

struct dvb_frontend *mxl111sf_demod_attach(struct mxl111sf_state *mxl_state,
       const struct mxl111sf_demod_config *cfg)
{
 struct mxl111sf_demod_state *state = ((void*)0);

 mxl_dbg("()");

 state = kzalloc(sizeof(struct mxl111sf_demod_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);

 state->mxl_state = mxl_state;
 state->cfg = cfg;

 memcpy(&state->fe.ops, &mxl111sf_demod_ops,
        sizeof(struct dvb_frontend_ops));

 state->fe.demodulator_priv = state;
 return &state->fe;
}
