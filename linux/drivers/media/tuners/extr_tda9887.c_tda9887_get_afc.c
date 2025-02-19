
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda9887_priv {scalar_t__ mode; int i2c_props; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;
typedef int s32 ;
typedef int __u8 ;


 scalar_t__ V4L2_TUNER_RADIO ;
 int tuner_i2c_xfer_recv (int *,int*,int) ;

__attribute__((used)) static int tda9887_get_afc(struct dvb_frontend *fe, s32 *afc)
{
 struct tda9887_priv *priv = fe->analog_demod_priv;
 static const int AFC_BITS_2_kHz[] = {
  -12500, -37500, -62500, -97500,
  -112500, -137500, -162500, -187500,
  187500, 162500, 137500, 112500,
  97500 , 62500, 37500 , 12500
 };
 __u8 reg = 0;

 if (priv->mode != V4L2_TUNER_RADIO)
  return 0;
 if (1 == tuner_i2c_xfer_recv(&priv->i2c_props, &reg, 1))
  *afc = AFC_BITS_2_kHz[(reg >> 1) & 0x0f];
 return 0;
}
