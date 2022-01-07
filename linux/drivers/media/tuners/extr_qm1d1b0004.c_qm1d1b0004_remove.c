
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct dvb_frontend {int * tuner_priv; } ;


 struct dvb_frontend* i2c_get_clientdata (struct i2c_client*) ;
 int kfree (int *) ;

__attribute__((used)) static int qm1d1b0004_remove(struct i2c_client *client)
{
 struct dvb_frontend *fe;

 fe = i2c_get_clientdata(client);
 kfree(fe->tuner_priv);
 fe->tuner_priv = ((void*)0);
 return 0;
}
