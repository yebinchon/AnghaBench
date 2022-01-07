
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_subdev {int dummy; } ;
struct ths8200_state {int sd; } ;
struct i2c_client {int addr; TYPE_1__* adapter; int name; } ;
struct TYPE_2__ {int name; } ;


 int debug ;
 struct v4l2_subdev* i2c_get_clientdata (struct i2c_client*) ;
 int ths8200_s_power (struct v4l2_subdev*,int) ;
 struct ths8200_state* to_state (struct v4l2_subdev*) ;
 int v4l2_async_unregister_subdev (int *) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int ,int,int ) ;

__attribute__((used)) static int ths8200_remove(struct i2c_client *client)
{
 struct v4l2_subdev *sd = i2c_get_clientdata(client);
 struct ths8200_state *decoder = to_state(sd);

 v4l2_dbg(1, debug, sd, "%s removed @ 0x%x (%s)\n", client->name,
   client->addr << 1, client->adapter->name);

 ths8200_s_power(sd, 0);
 v4l2_async_unregister_subdev(&decoder->sd);

 return 0;
}
