
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ts2020_priv {struct i2c_client* client; } ;
struct i2c_client {int dev; } ;
struct dvb_frontend {struct ts2020_priv* tuner_priv; } ;


 int dev_dbg (int *,char*) ;
 int i2c_unregister_device (struct i2c_client*) ;

__attribute__((used)) static void ts2020_release(struct dvb_frontend *fe)
{
 struct ts2020_priv *priv = fe->tuner_priv;
 struct i2c_client *client = priv->client;

 dev_dbg(&client->dev, "\n");

 i2c_unregister_device(client);
}
