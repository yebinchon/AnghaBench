
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qcom_coincell {TYPE_1__* dev; int base_addr; int regmap; } ;
struct TYPE_2__ {int parent; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_get_regmap (int ,int *) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_u32 (struct device_node*,char*,int *) ;
 int qcom_coincell_chgr_config (struct qcom_coincell*,int ,int ,int) ;

__attribute__((used)) static int qcom_coincell_probe(struct platform_device *pdev)
{
 struct device_node *node = pdev->dev.of_node;
 struct qcom_coincell chgr;
 u32 rset = 0;
 u32 vset = 0;
 bool enable;
 int rc;

 chgr.dev = &pdev->dev;

 chgr.regmap = dev_get_regmap(pdev->dev.parent, ((void*)0));
 if (!chgr.regmap) {
  dev_err(chgr.dev, "Unable to get regmap\n");
  return -EINVAL;
 }

 rc = of_property_read_u32(node, "reg", &chgr.base_addr);
 if (rc)
  return rc;

 enable = !of_property_read_bool(node, "qcom,charger-disable");

 if (enable) {
  rc = of_property_read_u32(node, "qcom,rset-ohms", &rset);
  if (rc) {
   dev_err(chgr.dev,
    "can't find 'qcom,rset-ohms' in DT block");
   return rc;
  }

  rc = of_property_read_u32(node, "qcom,vset-millivolts", &vset);
  if (rc) {
   dev_err(chgr.dev,
       "can't find 'qcom,vset-millivolts' in DT block");
   return rc;
  }
 }

 return qcom_coincell_chgr_config(&chgr, rset, vset, enable);
}
