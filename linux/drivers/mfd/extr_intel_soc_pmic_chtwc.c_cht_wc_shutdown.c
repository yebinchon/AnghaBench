
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_soc_pmic {int irq; } ;
struct i2c_client {int dummy; } ;


 int disable_irq (int ) ;
 struct intel_soc_pmic* i2c_get_clientdata (struct i2c_client*) ;

__attribute__((used)) static void cht_wc_shutdown(struct i2c_client *client)
{
 struct intel_soc_pmic *pmic = i2c_get_clientdata(client);

 disable_irq(pmic->irq);
}
