
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sec_pmic_dev {scalar_t__ device_type; int dev; int regmap_pmic; TYPE_1__* pdata; } ;
struct TYPE_2__ {scalar_t__ disable_wrstbi; } ;


 scalar_t__ S2MPS13X ;
 int S2MPS13_REG_WRSTBI ;
 int S2MPS13_REG_WRSTBI_MASK ;
 int dev_warn (int ,char*,int) ;
 int regmap_update_bits (int ,int ,int ,int) ;

__attribute__((used)) static void sec_pmic_configure(struct sec_pmic_dev *sec_pmic)
{
 int err;

 if (sec_pmic->device_type != S2MPS13X)
  return;

 if (sec_pmic->pdata->disable_wrstbi) {





  err = regmap_update_bits(sec_pmic->regmap_pmic,
      S2MPS13_REG_WRSTBI,
      S2MPS13_REG_WRSTBI_MASK, 0x0);
  if (err)
   dev_warn(sec_pmic->dev,
     "Cannot initialize WRSTBI config: %d\n",
     err);
 }
}
