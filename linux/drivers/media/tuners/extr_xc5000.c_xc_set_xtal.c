
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc5000_priv {int chip_id; int xtal_khz; } ;
struct dvb_frontend {struct xc5000_priv* tuner_priv; } ;




 int xc_write_reg (struct xc5000_priv*,int,int) ;

__attribute__((used)) static int xc_set_xtal(struct dvb_frontend *fe)
{
 struct xc5000_priv *priv = fe->tuner_priv;
 int ret = 0;

 switch (priv->chip_id) {
 default:
 case 129:

  break;
 case 128:
  switch (priv->xtal_khz) {
  default:
  case 32000:

   break;
  case 31875:

   ret = xc_write_reg(priv, 0x000f, 0x8081);
   break;
  }
  break;
 }
 return ret;
}
