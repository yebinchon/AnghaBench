
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_soc_pmic {int irq; } ;
struct i2c_client {int dev; } ;


 struct intel_soc_pmic* dev_get_drvdata (int *) ;
 int disable_irq (int ) ;

__attribute__((used)) static void intel_soc_pmic_shutdown(struct i2c_client *i2c)
{
 struct intel_soc_pmic *pmic = dev_get_drvdata(&i2c->dev);

 disable_irq(pmic->irq);

 return;
}
