
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * analog_demod_priv; } ;
struct tuner {int list; TYPE_1__ fe; int sd; } ;
struct i2c_client {int dummy; } ;


 int i2c_get_clientdata (struct i2c_client*) ;
 int kfree (struct tuner*) ;
 int list_del (int *) ;
 struct tuner* to_tuner (int ) ;
 int tuner_detach (TYPE_1__*) ;
 int v4l2_device_unregister_subdev (int *) ;

__attribute__((used)) static int tuner_remove(struct i2c_client *client)
{
 struct tuner *t = to_tuner(i2c_get_clientdata(client));

 v4l2_device_unregister_subdev(&t->sd);
 tuner_detach(&t->fe);
 t->fe.analog_demod_priv = ((void*)0);

 list_del(&t->list);
 kfree(t);
 return 0;
}
