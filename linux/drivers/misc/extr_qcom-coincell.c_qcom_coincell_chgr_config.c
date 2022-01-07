
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_coincell {scalar_t__ base_addr; int regmap; int dev; } ;


 int ARRAY_SIZE (int*) ;
 int EINVAL ;
 int QCOM_COINCELL_ENABLE ;
 scalar_t__ QCOM_COINCELL_REG_ENABLE ;
 scalar_t__ QCOM_COINCELL_REG_RSET ;
 scalar_t__ QCOM_COINCELL_REG_VSET ;
 int dev_err (int ,char*,...) ;
 int* qcom_rset_map ;
 int* qcom_vset_map ;
 int regmap_write (int ,scalar_t__,int) ;

__attribute__((used)) static int qcom_coincell_chgr_config(struct qcom_coincell *chgr, int rset,
         int vset, bool enable)
{
 int i, j, rc;


 if (!enable)
  return regmap_write(chgr->regmap,
     chgr->base_addr + QCOM_COINCELL_REG_ENABLE, 0);


 for (i = 0; i < ARRAY_SIZE(qcom_rset_map); i++)
  if (rset == qcom_rset_map[i])
   break;

 if (i >= ARRAY_SIZE(qcom_rset_map)) {
  dev_err(chgr->dev, "invalid rset-ohms value %d\n", rset);
  return -EINVAL;
 }


 for (j = 0; j < ARRAY_SIZE(qcom_vset_map); j++)
  if (vset == qcom_vset_map[j])
   break;

 if (j >= ARRAY_SIZE(qcom_vset_map)) {
  dev_err(chgr->dev, "invalid vset-millivolts value %d\n", vset);
  return -EINVAL;
 }

 rc = regmap_write(chgr->regmap,
     chgr->base_addr + QCOM_COINCELL_REG_RSET, i);
 if (rc) {






  dev_err(chgr->dev, "could not write to RSET register\n");
  return rc;
 }

 rc = regmap_write(chgr->regmap,
  chgr->base_addr + QCOM_COINCELL_REG_VSET, j);
 if (rc)
  return rc;


 return regmap_write(chgr->regmap,
       chgr->base_addr + QCOM_COINCELL_REG_ENABLE,
       QCOM_COINCELL_ENABLE);
}
