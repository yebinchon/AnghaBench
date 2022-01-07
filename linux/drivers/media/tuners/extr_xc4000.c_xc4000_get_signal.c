
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct xc4000_priv {scalar_t__ video_standard; int lock; } ;
struct dvb_frontend {struct xc4000_priv* tuner_priv; } ;


 scalar_t__ XC4000_DTV6 ;
 scalar_t__ XC4000_DTV7 ;
 scalar_t__ XC4000_DTV7_8 ;
 scalar_t__ XC4000_DTV8 ;
 int XREG_NOISE_LEVEL ;
 int XREG_SIGNAL_LEVEL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int tuner_dbg (char*,int,int) ;
 int xc4000_readreg (struct xc4000_priv*,int ,int*) ;

__attribute__((used)) static int xc4000_get_signal(struct dvb_frontend *fe, u16 *strength)
{
 struct xc4000_priv *priv = fe->tuner_priv;
 u16 value = 0;
 int rc;

 mutex_lock(&priv->lock);
 rc = xc4000_readreg(priv, XREG_SIGNAL_LEVEL, &value);
 mutex_unlock(&priv->lock);

 if (rc < 0)
  goto ret;




 tuner_dbg("Signal strength: -%ddB (%05d)\n", value >> 8, value);


 if ((priv->video_standard == XC4000_DTV6) ||
     (priv->video_standard == XC4000_DTV7) ||
     (priv->video_standard == XC4000_DTV7_8) ||
     (priv->video_standard == XC4000_DTV8))
  goto digital;






 mutex_lock(&priv->lock);
 rc = xc4000_readreg(priv, XREG_NOISE_LEVEL, &value);
 mutex_unlock(&priv->lock);

 tuner_dbg("Noise level: %ddB (%05d)\n", value >> 8, value);


 if (value >= 0x2000) {
  value = 0;
 } else {
  value = (~value << 3) & 0xffff;
 }

 goto ret;




digital:

 if (value <= 0x3200) {
  value = 0xffff;

 } else if (value >= 0x713A) {
  value = 0;
 } else {
  value = ~(value - 0x3200) << 2;
 }

ret:
 *strength = value;

 return rc;
}
