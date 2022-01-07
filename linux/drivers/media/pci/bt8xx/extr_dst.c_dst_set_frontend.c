
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dtv_frontend_properties {int modulation; int symbol_rate; int fec_inner; int bandwidth_hz; int inversion; int frequency; } ;
struct dvb_frontend {struct dst_state* demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
struct dst_state {scalar_t__ dst_type; int type_flags; } ;


 int DST_TYPE_HAS_OBS_REGS ;
 scalar_t__ DST_TYPE_IS_CABLE ;
 scalar_t__ DST_TYPE_IS_SAT ;
 scalar_t__ DST_TYPE_IS_TERR ;
 int EINVAL ;
 int dprintk (int,char*,int ) ;
 int dst_set_bandwidth (struct dst_state*,int ) ;
 int dst_set_fec (struct dst_state*,int ) ;
 int dst_set_freq (struct dst_state*,int ) ;
 int dst_set_inversion (struct dst_state*,int ) ;
 int dst_set_modulation (struct dst_state*,int ) ;
 int dst_set_polarization (struct dst_state*) ;
 int dst_set_symbolrate (struct dst_state*,int ) ;
 int dst_write_tuna (struct dvb_frontend*) ;

__attribute__((used)) static int dst_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 int retval = -EINVAL;
 struct dst_state *state = fe->demodulator_priv;

 if (p != ((void*)0)) {
  retval = dst_set_freq(state, p->frequency);
  if(retval != 0)
   return retval;
  dprintk(3, "Set Frequency=[%d]\n", p->frequency);

  if (state->dst_type == DST_TYPE_IS_SAT) {
   if (state->type_flags & DST_TYPE_HAS_OBS_REGS)
    dst_set_inversion(state, p->inversion);
   dst_set_fec(state, p->fec_inner);
   dst_set_symbolrate(state, p->symbol_rate);
   dst_set_polarization(state);
   dprintk(3, "Set Symbolrate=[%d]\n", p->symbol_rate);

  } else if (state->dst_type == DST_TYPE_IS_TERR)
   dst_set_bandwidth(state, p->bandwidth_hz);
  else if (state->dst_type == DST_TYPE_IS_CABLE) {
   dst_set_fec(state, p->fec_inner);
   dst_set_symbolrate(state, p->symbol_rate);
   dst_set_modulation(state, p->modulation);
  }
  retval = dst_write_tuna(fe);
 }

 return retval;
}
