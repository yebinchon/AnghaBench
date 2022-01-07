
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tuner_simple_priv {int type; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;
 int tuner_dbg (char*) ;
 int tuner_err (char*) ;

__attribute__((used)) static int simple_radio_bandswitch(struct dvb_frontend *fe, u8 *buffer)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;

 switch (priv->type) {
 case 131:
 case 128:
  tuner_dbg("This tuner doesn't have FM. Most cards have a TEA5767 for FM\n");
  return 0;
 case 140:
 case 138:
 case 135:
 case 136:
 case 143:
 case 137:
 case 132:
  buffer[3] = 0x19;
  break;
 case 139:
  buffer[2] = 0x88;
  buffer[3] = 0x09;
  break;
 case 129:
  buffer[3] = 0x11;
  break;
 case 142:
  buffer[3] = 0xa5;
  break;
 case 130:
  buffer[3] = 0x39;
  break;
 case 134:
 case 133:
  tuner_err("This tuner doesn't have FM\n");

  buffer[3] = 0x01;
  break;
 case 141:
 default:
  buffer[3] = 0xa4;
  break;
 }

 return 0;
}
