
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stv6110x_state {int frontend; } ;
struct i2c_client {int dummy; } ;


 struct stv6110x_state* i2c_get_clientdata (struct i2c_client*) ;
 int stv6110x_release (int ) ;

__attribute__((used)) static int stv6110x_remove(struct i2c_client *client)
{
 struct stv6110x_state *stv6110x = i2c_get_clientdata(client);

 stv6110x_release(stv6110x->frontend);
 return 0;
}
