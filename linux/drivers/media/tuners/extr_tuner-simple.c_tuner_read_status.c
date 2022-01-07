
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tuner_simple_priv {int i2c_props; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;


 int tuner_i2c_xfer_recv (int *,unsigned char*,int) ;

__attribute__((used)) static int tuner_read_status(struct dvb_frontend *fe)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 unsigned char byte;

 if (1 != tuner_i2c_xfer_recv(&priv->i2c_props, &byte, 1))
  return 0;

 return byte;
}
