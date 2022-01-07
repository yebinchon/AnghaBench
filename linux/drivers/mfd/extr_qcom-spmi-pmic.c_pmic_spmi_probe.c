
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spmi_device {int usid; int dev; } ;
struct regmap {int dummy; } ;


 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int devm_of_platform_populate (int *) ;
 struct regmap* devm_regmap_init_spmi_ext (struct spmi_device*,int *) ;
 int pmic_spmi_show_revid (struct regmap*,int *) ;
 int spmi_regmap_config ;

__attribute__((used)) static int pmic_spmi_probe(struct spmi_device *sdev)
{
 struct regmap *regmap;

 regmap = devm_regmap_init_spmi_ext(sdev, &spmi_regmap_config);
 if (IS_ERR(regmap))
  return PTR_ERR(regmap);


 if (sdev->usid % 2 == 0)
  pmic_spmi_show_revid(regmap, &sdev->dev);

 return devm_of_platform_populate(&sdev->dev);
}
