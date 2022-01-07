
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv6110x_state {struct stv6110x_devctl* devctl; } ;
struct stv6110x_devctl {int dummy; } ;
struct i2c_client {int dev; } ;


 int dev_dbg (int *,char*) ;
 struct stv6110x_state* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static struct stv6110x_devctl *stv6110x_get_devctl(struct i2c_client *client)
{
 struct stv6110x_state *stv6110x = i2c_get_clientdata(client);

 dev_dbg(&client->dev, "\n");

 return stv6110x->devctl;
}
