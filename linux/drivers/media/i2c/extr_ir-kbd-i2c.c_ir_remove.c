
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct IR_i2c {int rc; int tx_c; int work; } ;


 int cancel_delayed_work_sync (int *) ;
 struct IR_i2c* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int rc_unregister_device (int ) ;

__attribute__((used)) static int ir_remove(struct i2c_client *client)
{
 struct IR_i2c *ir = i2c_get_clientdata(client);

 cancel_delayed_work_sync(&ir->work);

 i2c_unregister_device(ir->tx_c);

 rc_unregister_device(ir->rc);

 return 0;
}
