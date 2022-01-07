
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct microtune_priv {int i2c_props; } ;
struct dvb_frontend {struct microtune_priv* tuner_priv; } ;


 int mt2032_check_lo_lock (struct dvb_frontend*) ;
 int tuner_dbg (char*,int) ;
 int tuner_i2c_xfer_recv (int *,unsigned char*,int) ;
 int tuner_i2c_xfer_send (int *,unsigned char*,int) ;

__attribute__((used)) static int mt2032_optimize_vco(struct dvb_frontend *fe,int sel,int lock)
{
 struct microtune_priv *priv = fe->tuner_priv;
 unsigned char buf[2];
 int tad1;

 buf[0]=0x0f;
 tuner_i2c_xfer_send(&priv->i2c_props,buf,1);
 tuner_i2c_xfer_recv(&priv->i2c_props,buf,1);
 tuner_dbg("mt2032 Reg.F=0x%02x\n",buf[0]);
 tad1=buf[0]&0x07;

 if(tad1 ==0) return lock;
 if(tad1 ==1) return lock;

 if(tad1==2) {
  if(sel==0)
   return lock;
  else sel--;
 }
 else {
  if(sel<4)
   sel++;
  else
   return lock;
 }

 tuner_dbg("mt2032 optimize_vco: sel=%d\n",sel);

 buf[0]=0x0f;
 buf[1]=sel;
 tuner_i2c_xfer_send(&priv->i2c_props,buf,2);
 lock=mt2032_check_lo_lock(fe);
 return lock;
}
