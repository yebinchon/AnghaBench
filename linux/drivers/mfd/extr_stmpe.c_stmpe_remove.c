
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmpe {int dev; int vcc; int vio; } ;


 int IS_ERR (int ) ;
 int STMPE_BLOCK_ADC ;
 int __stmpe_disable (struct stmpe*,int ) ;
 int mfd_remove_devices (int ) ;
 int regulator_disable (int ) ;

int stmpe_remove(struct stmpe *stmpe)
{
 if (!IS_ERR(stmpe->vio))
  regulator_disable(stmpe->vio);
 if (!IS_ERR(stmpe->vcc))
  regulator_disable(stmpe->vcc);

 __stmpe_disable(stmpe, STMPE_BLOCK_ADC);

 mfd_remove_devices(stmpe->dev);

 return 0;
}
