
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mxl111sf_tuner_state {struct mxl111sf_tuner_config const* cfg; struct mxl111sf_state* mxl_state; } ;
struct mxl111sf_tuner_config {int dummy; } ;
struct mxl111sf_state {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int tuner_ops; } ;
struct dvb_frontend {struct mxl111sf_tuner_state* tuner_priv; TYPE_1__ ops; } ;


 int GFP_KERNEL ;
 struct mxl111sf_tuner_state* kzalloc (int,int ) ;
 int memcpy (int *,int *,int) ;
 int mxl111sf_tuner_tuner_ops ;
 int mxl_dbg (char*) ;

struct dvb_frontend *mxl111sf_tuner_attach(struct dvb_frontend *fe,
    struct mxl111sf_state *mxl_state,
    const struct mxl111sf_tuner_config *cfg)
{
 struct mxl111sf_tuner_state *state = ((void*)0);

 mxl_dbg("()");

 state = kzalloc(sizeof(struct mxl111sf_tuner_state), GFP_KERNEL);
 if (state == ((void*)0))
  return ((void*)0);

 state->mxl_state = mxl_state;
 state->cfg = cfg;

 memcpy(&fe->ops.tuner_ops, &mxl111sf_tuner_tuner_ops,
        sizeof(struct dvb_tuner_ops));

 fe->tuner_priv = state;
 return fe;
}
