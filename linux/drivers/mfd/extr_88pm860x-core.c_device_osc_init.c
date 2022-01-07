
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm860x_chip {int osc_status; int osc_vote; int osc_lock; } ;
struct i2c_client {int dummy; } ;


 int PM8606_MISC ;
 int PM8606_MISC_OSC_EN ;
 int PM8606_REF_GP_OSC_OFF ;
 int PM8606_VSYS ;
 int PM8606_VSYS_EN ;
 int REF_GP_NO_CLIENTS ;
 struct pm860x_chip* i2c_get_clientdata (struct i2c_client*) ;
 int mutex_init (int *) ;
 int pm860x_set_bits (struct i2c_client*,int ,int ,int ) ;

__attribute__((used)) static void device_osc_init(struct i2c_client *i2c)
{
 struct pm860x_chip *chip = i2c_get_clientdata(i2c);

 mutex_init(&chip->osc_lock);


 pm860x_set_bits(i2c, PM8606_VSYS, PM8606_VSYS_EN, 0);

 pm860x_set_bits(i2c, PM8606_MISC, PM8606_MISC_OSC_EN, 0);

 chip->osc_vote = REF_GP_NO_CLIENTS;
 chip->osc_status = PM8606_REF_GP_OSC_OFF;
}
