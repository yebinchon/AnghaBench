
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tda8290_priv {int i2c_props; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;


 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;
 int tuner_i2c_xfer_send_recv (int *,unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static void tda8295_agc2_out(struct dvb_frontend *fe, int enable)
{
 struct tda8290_priv *priv = fe->analog_demod_priv;
 unsigned char set_gpio_cf[] = { 0x44, 0x00 };
 unsigned char set_gpio_val[] = { 0x46, 0x00 };

 tuner_i2c_xfer_send_recv(&priv->i2c_props,
     &set_gpio_cf[0], 1, &set_gpio_cf[1], 1);
 tuner_i2c_xfer_send_recv(&priv->i2c_props,
     &set_gpio_val[0], 1, &set_gpio_val[1], 1);

 set_gpio_cf[1] &= 0xf0;

 if (enable) {
  set_gpio_cf[1] |= 0x01;
  set_gpio_val[1] &= 0xfe;
 }
 tuner_i2c_xfer_send(&priv->i2c_props, set_gpio_cf, 2);
 tuner_i2c_xfer_send(&priv->i2c_props, set_gpio_val, 2);
}
