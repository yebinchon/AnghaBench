
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvb_frontend {struct dtt200u_fe_state* demodulator_priv; } ;
struct dtv_frontend_properties {int dummy; } ;
struct dtt200u_fe_state {int fep; } ;


 int memcpy (struct dtv_frontend_properties*,int *,int) ;

__attribute__((used)) static int dtt200u_fe_get_frontend(struct dvb_frontend* fe,
       struct dtv_frontend_properties *fep)
{
 struct dtt200u_fe_state *state = fe->demodulator_priv;

 memcpy(fep, &state->fep, sizeof(struct dtv_frontend_properties));
 return 0;
}
