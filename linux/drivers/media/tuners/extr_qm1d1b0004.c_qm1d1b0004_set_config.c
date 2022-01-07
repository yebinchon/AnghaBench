
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm1d1b0004_state {int cfg; } ;
struct dvb_frontend {struct qm1d1b0004_state* tuner_priv; } ;


 int memcpy (int *,void*,int) ;

__attribute__((used)) static int qm1d1b0004_set_config(struct dvb_frontend *fe, void *priv_cfg)
{
 struct qm1d1b0004_state *state;

 state = fe->tuner_priv;
 memcpy(&state->cfg, priv_cfg, sizeof(state->cfg));
 return 0;
}
