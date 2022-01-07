
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tea5767_priv {int i2c_props; } ;
struct dvb_frontend {struct tea5767_priv* tuner_priv; } ;


 int EREMOTEIO ;
 int memset (char*,int ,int) ;
 int tuner_i2c_xfer_recv (int *,char*,int) ;
 int tuner_warn (char*,int) ;

__attribute__((used)) static int tea5767_read_status(struct dvb_frontend *fe, char *buffer)
{
 struct tea5767_priv *priv = fe->tuner_priv;
 int rc;

 memset(buffer, 0, 5);
 if (5 != (rc = tuner_i2c_xfer_recv(&priv->i2c_props, buffer, 5))) {
  tuner_warn("i2c i/o error: rc == %d (should be 5)\n", rc);
  return -EREMOTEIO;
 }

 return 0;
}
