
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; int adap; } ;
struct tda18271_priv {unsigned char* tda18271_regs; TYPE_1__ i2c_props; int id; int lock; } ;
struct dvb_frontend {struct tda18271_priv* tuner_priv; } ;


 int EINVAL ;
 int EIO ;
 size_t R_ID ;
 int TDA18271HDC1 ;
 int TDA18271HDC2 ;
 int i2c_adapter_id (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tda18271_read_regs (struct dvb_frontend*) ;
 int tda_info (char*,...) ;

__attribute__((used)) static int tda18271_get_id(struct dvb_frontend *fe)
{
 struct tda18271_priv *priv = fe->tuner_priv;
 unsigned char *regs = priv->tda18271_regs;
 char *name;
 int ret;

 mutex_lock(&priv->lock);
 ret = tda18271_read_regs(fe);
 mutex_unlock(&priv->lock);

 if (ret) {
  tda_info("Error reading device ID @ %d-%04x, bailing out.\n",
    i2c_adapter_id(priv->i2c_props.adap),
    priv->i2c_props.addr);
  return -EIO;
 }

 switch (regs[R_ID] & 0x7f) {
 case 3:
  name = "TDA18271HD/C1";
  priv->id = TDA18271HDC1;
  break;
 case 4:
  name = "TDA18271HD/C2";
  priv->id = TDA18271HDC2;
  break;
 default:
  tda_info("Unknown device (%i) detected @ %d-%04x, device not supported.\n",
    regs[R_ID], i2c_adapter_id(priv->i2c_props.adap),
    priv->i2c_props.addr);
  return -EINVAL;
 }

 tda_info("%s detected @ %d-%04x\n", name,
   i2c_adapter_id(priv->i2c_props.adap), priv->i2c_props.addr);

 return 0;
}
