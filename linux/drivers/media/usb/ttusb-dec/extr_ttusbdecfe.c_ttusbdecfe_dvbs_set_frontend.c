
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ttusbdecfe_state {TYPE_1__* config; scalar_t__ voltage; scalar_t__ hi_band; } ;
struct dtv_frontend_properties {scalar_t__ symbol_rate; scalar_t__ frequency; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
typedef int b ;
typedef int __be32 ;
struct TYPE_2__ {int (* send_command ) (struct dvb_frontend*,int,int,int*,int *,int *) ;} ;


 scalar_t__ LOF_HI ;
 scalar_t__ LOF_LO ;
 int htonl (scalar_t__) ;
 int memcpy (int*,int *,int) ;
 int stub1 (struct dvb_frontend*,int,int,int*,int *,int *) ;

__attribute__((used)) static int ttusbdecfe_dvbs_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct ttusbdecfe_state* state = (struct ttusbdecfe_state*) fe->demodulator_priv;

 u8 b[] = { 0x00, 0x00, 0x00, 0x01,
     0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x01,
     0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x00 };
 __be32 freq;
 __be32 sym_rate;
 __be32 band;
 __be32 lnb_voltage;

 freq = htonl(p->frequency +
        (state->hi_band ? LOF_HI : LOF_LO));
 memcpy(&b[4], &freq, sizeof(u32));
 sym_rate = htonl(p->symbol_rate);
 memcpy(&b[12], &sym_rate, sizeof(u32));
 band = htonl(state->hi_band ? LOF_HI : LOF_LO);
 memcpy(&b[24], &band, sizeof(u32));
 lnb_voltage = htonl(state->voltage);
 memcpy(&b[28], &lnb_voltage, sizeof(u32));

 state->config->send_command(fe, 0x71, sizeof(b), b, ((void*)0), ((void*)0));

 return 0;
}
