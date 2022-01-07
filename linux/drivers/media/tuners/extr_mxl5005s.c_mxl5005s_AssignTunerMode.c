
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mxl5005s_state {struct mxl5005s_config* config; } ;
struct mxl5005s_config {int tracking_filter; int rssi_enable; int cap_select; int div_out; int clock_out; int output_load; int top; int agc_mode; int xtal_freq; int if_freq; int if_mode; int mod_mode; } ;
struct dvb_frontend {struct mxl5005s_state* tuner_priv; } ;


 int InitTunerControls (struct dvb_frontend*) ;
 int MXL5005_TunerConfig (struct dvb_frontend*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int mxl5005s_AssignTunerMode(struct dvb_frontend *fe, u32 mod_type,
 u32 bandwidth)
{
 struct mxl5005s_state *state = fe->tuner_priv;
 struct mxl5005s_config *c = state->config;

 InitTunerControls(fe);


 MXL5005_TunerConfig(
  fe,
  c->mod_mode,
  c->if_mode,
  bandwidth,
  c->if_freq,
  c->xtal_freq,
  c->agc_mode,
  c->top,
  c->output_load,
  c->clock_out,
  c->div_out,
  c->cap_select,
  c->rssi_enable,
  mod_type,
  c->tracking_filter);

 return 0;
}
