
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm80x_chip {int dev; } ;
struct i2c_client {int dummy; } ;


 int device_irq_exit_805 (struct pm80x_chip*) ;
 struct pm80x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int mfd_remove_devices (int ) ;
 int pm80x_deinit () ;

__attribute__((used)) static int pm805_remove(struct i2c_client *client)
{
 struct pm80x_chip *chip = i2c_get_clientdata(client);

 mfd_remove_devices(chip->dev);
 device_irq_exit_805(chip);

 pm80x_deinit();

 return 0;
}
