
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tuner_simple_priv {int type; size_t nr; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;
 unsigned int* dtv_input ;
 int simple_set_rf_input (struct dvb_frontend*,int*,int*,unsigned int) ;

__attribute__((used)) static void simple_set_dvb(struct dvb_frontend *fe, u8 *buf,
      const u32 delsys,
      const u32 frequency,
      const u32 bandwidth)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;

 switch (priv->type) {
 case 130:
 case 131:
  if (bandwidth == 8000000 &&
      frequency >= 158870000)
   buf[3] |= 0x08;
  break;
 case 129:

  buf[3] |= (frequency < 161000000) ? 1 :
     (frequency < 444000000) ? 2 : 4;


  if (bandwidth == 8000000)
   buf[3] |= 1 << 3;
  break;
 case 128:
 case 132:
 {
  unsigned int new_rf;

  if (dtv_input[priv->nr])
   new_rf = dtv_input[priv->nr];
  else
   switch (delsys) {
   case 133:
    new_rf = 1;
    break;
   case 134:
   default:
    new_rf = 0;
    break;
   }
  simple_set_rf_input(fe, &buf[2], &buf[3], new_rf);
  break;
 }
 default:
  break;
 }
}
