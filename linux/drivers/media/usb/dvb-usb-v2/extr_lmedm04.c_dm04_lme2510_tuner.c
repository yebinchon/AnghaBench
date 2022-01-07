
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lme2510_state {int tuner_config; } ;
struct dvb_usb_device {int i2c_adap; } ;
struct dvb_usb_adapter {int * fe; } ;


 int DVB_PLL_OPERA1 ;
 int ENODEV ;




 struct dvb_usb_device* adap_to_d (struct dvb_usb_adapter*) ;
 struct lme2510_state* adap_to_priv (struct dvb_usb_adapter*) ;
 int dvb_attach (int ,int ,int,int *,...) ;
 int dvb_pll_attach ;
 int info (char*,...) ;
 int ix2505v_attach ;
 int lme2510_int_read (struct dvb_usb_adapter*) ;
 int lme_tuner ;
 int tda826x_attach ;
 int ts2020_attach ;
 int ts2020_config ;

__attribute__((used)) static int dm04_lme2510_tuner(struct dvb_usb_adapter *adap)
{
 struct dvb_usb_device *d = adap_to_d(adap);
 struct lme2510_state *st = adap_to_priv(adap);
 static const char * const tun_msg[] = {"", "TDA8263", "IX2505V", "DVB_PLL_OPERA", "RS2000"};
 int ret = 0;

 switch (st->tuner_config) {
 case 131:
  if (dvb_attach(tda826x_attach, adap->fe[0], 0x60,
   &d->i2c_adap, 1))
   ret = st->tuner_config;
  break;
 case 128:
  if (dvb_attach(ix2505v_attach , adap->fe[0], &lme_tuner,
   &d->i2c_adap))
   ret = st->tuner_config;
  break;
 case 129:
  if (dvb_attach(dvb_pll_attach , adap->fe[0], 0x60,
   &d->i2c_adap, DVB_PLL_OPERA1))
   ret = st->tuner_config;
  break;
 case 130:
  if (dvb_attach(ts2020_attach, adap->fe[0],
          &ts2020_config, &d->i2c_adap))
   ret = st->tuner_config;
  break;
 default:
  break;
 }

 if (ret) {
  info("TUN Found %s tuner", tun_msg[ret]);
 } else {
  info("TUN No tuner found");
  return -ENODEV;
 }


 ret = lme2510_int_read(adap);
 if (ret < 0) {
  info("INT Unable to start Interrupt Service");
  return -ENODEV;
 }

 return ret;
}
