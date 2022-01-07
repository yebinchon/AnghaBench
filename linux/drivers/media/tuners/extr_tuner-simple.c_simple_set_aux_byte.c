
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tuner_simple_priv {int i2c_props; } ;
struct dvb_frontend {struct tuner_simple_priv* tuner_priv; } ;


 int tuner_dbg (char*,int,int) ;
 int tuner_i2c_xfer_send (int *,int*,int) ;
 int tuner_warn (char*,int) ;

__attribute__((used)) static int simple_set_aux_byte(struct dvb_frontend *fe, u8 config, u8 aux)
{
 struct tuner_simple_priv *priv = fe->tuner_priv;
 int rc;
 u8 buffer[2];

 buffer[0] = (config & ~0x38) | 0x18;
 buffer[1] = aux;

 tuner_dbg("setting aux byte: 0x%02x 0x%02x\n", buffer[0], buffer[1]);

 rc = tuner_i2c_xfer_send(&priv->i2c_props, buffer, 2);
 if (2 != rc)
  tuner_warn("i2c i/o error: rc == %d (should be 2)\n", rc);

 return rc == 2 ? 0 : rc;
}
