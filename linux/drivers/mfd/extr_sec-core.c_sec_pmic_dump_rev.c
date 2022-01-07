
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_pmic_dev {int dev; int regmap_pmic; } ;


 int S2MPS11_REG_ID ;
 int dev_dbg (int ,char*,unsigned int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static void sec_pmic_dump_rev(struct sec_pmic_dev *sec_pmic)
{
 unsigned int val;


 if (!regmap_read(sec_pmic->regmap_pmic, S2MPS11_REG_ID, &val))
  dev_dbg(sec_pmic->dev, "Revision: 0x%x\n", val);
}
