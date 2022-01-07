
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ttusbdecfe_state {TYPE_1__* config; } ;
struct dtv_frontend_properties {int frequency; } ;
struct dvb_frontend {scalar_t__ demodulator_priv; struct dtv_frontend_properties dtv_property_cache; } ;
typedef int b ;
typedef int __be32 ;
struct TYPE_2__ {int (* send_command ) (struct dvb_frontend*,int,int,int*,int *,int *) ;} ;


 int htonl (int) ;
 int memcpy (int*,int *,int) ;
 int stub1 (struct dvb_frontend*,int,int,int*,int *,int *) ;

__attribute__((used)) static int ttusbdecfe_dvbt_set_frontend(struct dvb_frontend *fe)
{
 struct dtv_frontend_properties *p = &fe->dtv_property_cache;
 struct ttusbdecfe_state* state = (struct ttusbdecfe_state*) fe->demodulator_priv;
 u8 b[] = { 0x00, 0x00, 0x00, 0x03,
     0x00, 0x00, 0x00, 0x00,
     0x00, 0x00, 0x00, 0x01,
     0x00, 0x00, 0x00, 0xff,
     0x00, 0x00, 0x00, 0xff };

 __be32 freq = htonl(p->frequency / 1000);
 memcpy(&b[4], &freq, sizeof (u32));
 state->config->send_command(fe, 0x71, sizeof(b), b, ((void*)0), ((void*)0));

 return 0;
}
