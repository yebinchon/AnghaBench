
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc5000_priv {int mode; } ;
struct dvb_frontend {struct xc5000_priv* tuner_priv; } ;


 int EINVAL ;



 int dprintk (int,char*) ;
 int xc5000_set_radio_freq (struct dvb_frontend*) ;
 int xc5000_set_tv_freq (struct dvb_frontend*) ;
 int xc5000_tune_digital (struct dvb_frontend*) ;
 scalar_t__ xc_load_fw_and_init_tuner (struct dvb_frontend*,int ) ;

__attribute__((used)) static int xc5000_set_params(struct dvb_frontend *fe)
{
 struct xc5000_priv *priv = fe->tuner_priv;

 if (xc_load_fw_and_init_tuner(fe, 0) != 0) {
  dprintk(1, "Unable to load firmware and init tuner\n");
  return -EINVAL;
 }

 switch (priv->mode) {
 case 128:
  return xc5000_set_radio_freq(fe);
 case 130:
  return xc5000_set_tv_freq(fe);
 case 129:
  return xc5000_tune_digital(fe);
 }

 return 0;
}
