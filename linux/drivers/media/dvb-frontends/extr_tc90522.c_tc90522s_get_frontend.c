
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tc90522_state {int dummy; } ;
struct TYPE_6__ {int (* get_rf_strength ) (struct dvb_frontend*,int *) ;} ;
struct TYPE_7__ {TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct tc90522_state* demodulator_priv; } ;
struct dtv_fe_stats {int len; TYPE_4__* stat; } ;
struct dtv_frontend_properties {int symbol_rate; int stream_id; struct dtv_fe_stats post_bit_count; struct dtv_fe_stats post_bit_error; struct dtv_fe_stats cnr; struct dtv_fe_stats strength; TYPE_1__* layer; void* modulation; void* fec_inner; int delivery_system; } ;
typedef long long s64 ;
struct TYPE_8__ {long long svalue; int uvalue; void* scale; } ;
struct TYPE_5__ {int segment_count; void* modulation; void* fec; } ;


 void* FE_SCALE_COUNTER ;
 void* FE_SCALE_DECIBEL ;
 void* FE_SCALE_NOT_AVAILABLE ;
 void* PSK_8 ;
 void* QPSK ;
 int SYS_ISDBS ;
 int div64_s64 (long long,int) ;
 void** fec_conv_sat ;
 int int_sqrt (int) ;
 int memset (struct dtv_fe_stats*,int ,int) ;
 int reg_read (struct tc90522_state*,int,int*,int) ;
 int stub1 (struct dvb_frontend*,int *) ;

__attribute__((used)) static int tc90522s_get_frontend(struct dvb_frontend *fe,
     struct dtv_frontend_properties *c)
{
 struct tc90522_state *state;
 struct dtv_fe_stats *stats;
 int ret, i;
 int layers;
 u8 val[10];
 u32 cndat;

 state = fe->demodulator_priv;
 c->delivery_system = SYS_ISDBS;
 c->symbol_rate = 28860000;

 layers = 0;
 ret = reg_read(state, 0xe6, val, 5);
 if (ret == 0) {
  u8 v;

  c->stream_id = val[0] << 8 | val[1];


  v = (val[2] & 0x70) >> 4;
  c->modulation = (v == 7) ? PSK_8 : QPSK;
  c->fec_inner = fec_conv_sat[v];
  c->layer[0].fec = c->fec_inner;
  c->layer[0].modulation = c->modulation;
  c->layer[0].segment_count = val[3] & 0x3f;


  v = (val[2] & 0x07);
  c->layer[1].fec = fec_conv_sat[v];
  if (v == 0)
   c->layer[1].segment_count = 0;
  else
   c->layer[1].segment_count = val[4] & 0x3f;




  c->layer[1].modulation = QPSK;
  layers = (v > 0) ? 2 : 1;
 }



 stats = &c->strength;
 stats->len = 0;

 if (fe->ops.tuner_ops.get_rf_strength) {
  u16 dummy;

  fe->ops.tuner_ops.get_rf_strength(fe, &dummy);
 }

 stats = &c->cnr;
 stats->len = 1;
 stats->stat[0].scale = FE_SCALE_NOT_AVAILABLE;
 cndat = 0;
 ret = reg_read(state, 0xbc, val, 2);
 if (ret == 0)
  cndat = val[0] << 8 | val[1];
 if (cndat >= 3000) {
  u32 p, p4;
  s64 cn;

  cndat -= 3000;







  p = int_sqrt(cndat << 16);
  p4 = cndat * cndat;
  cn = div64_s64(-16346LL * p4 * p, 10) >> 35;
  cn += (14341LL * p4) >> 21;
  cn -= (50259LL * cndat * p) >> 23;
  cn += (88977LL * cndat) >> 9;
  cn -= (89565LL * p) >> 11;
  cn += 58857 << 3;
  stats->stat[0].svalue = cn >> 3;
  stats->stat[0].scale = FE_SCALE_DECIBEL;
 }


 stats = &c->post_bit_error;
 memset(stats, 0, sizeof(*stats));
 stats->len = layers;
 ret = reg_read(state, 0xeb, val, 10);
 if (ret < 0)
  for (i = 0; i < layers; i++)
   stats->stat[i].scale = FE_SCALE_NOT_AVAILABLE;
 else {
  for (i = 0; i < layers; i++) {
   stats->stat[i].scale = FE_SCALE_COUNTER;
   stats->stat[i].uvalue = val[i * 5] << 16
    | val[i * 5 + 1] << 8 | val[i * 5 + 2];
  }
 }
 stats = &c->post_bit_count;
 memset(stats, 0, sizeof(*stats));
 stats->len = layers;
 if (ret < 0)
  for (i = 0; i < layers; i++)
   stats->stat[i].scale = FE_SCALE_NOT_AVAILABLE;
 else {
  for (i = 0; i < layers; i++) {
   stats->stat[i].scale = FE_SCALE_COUNTER;
   stats->stat[i].uvalue =
    val[i * 5 + 3] << 8 | val[i * 5 + 4];
   stats->stat[i].uvalue *= 204 * 8;
  }
 }

 return 0;
}
