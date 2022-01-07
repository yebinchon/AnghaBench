
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int stmfx_chip_exit (struct i2c_client*) ;
 int stmfx_irq_exit (struct i2c_client*) ;

__attribute__((used)) static int stmfx_remove(struct i2c_client *client)
{
 stmfx_irq_exit(client);

 return stmfx_chip_exit(client);
}
