
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8925_chip {int rtc; int adc; } ;
struct i2c_client {int dummy; } ;


 struct max8925_chip* i2c_get_clientdata (struct i2c_client*) ;
 int i2c_unregister_device (int ) ;
 int max8925_device_exit (struct max8925_chip*) ;

__attribute__((used)) static int max8925_remove(struct i2c_client *client)
{
 struct max8925_chip *chip = i2c_get_clientdata(client);

 max8925_device_exit(chip);
 i2c_unregister_device(chip->adc);
 i2c_unregister_device(chip->rtc);
 return 0;
}
