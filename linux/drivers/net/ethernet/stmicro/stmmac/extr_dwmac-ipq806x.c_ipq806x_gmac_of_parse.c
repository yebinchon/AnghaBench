
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipq806x_gmac {int id; void* qsgmii_csr; void* nss_common; void* core_clk; scalar_t__ phy_mode; TYPE_1__* pdev; } ;
struct device {int of_node; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int PTR_ERR_OR_ZERO (void*) ;
 int clk_set_rate (void*,int) ;
 int dev_err (struct device*,char*) ;
 void* devm_clk_get (struct device*,char*) ;
 scalar_t__ of_get_phy_mode (int ) ;
 scalar_t__ of_property_read_u32 (int ,char*,int*) ;
 void* syscon_regmap_lookup_by_phandle (int ,char*) ;

__attribute__((used)) static int ipq806x_gmac_of_parse(struct ipq806x_gmac *gmac)
{
 struct device *dev = &gmac->pdev->dev;

 gmac->phy_mode = of_get_phy_mode(dev->of_node);
 if ((int)gmac->phy_mode < 0) {
  dev_err(dev, "missing phy mode property\n");
  return -EINVAL;
 }

 if (of_property_read_u32(dev->of_node, "qcom,id", &gmac->id) < 0) {
  dev_err(dev, "missing qcom id property\n");
  return -EINVAL;
 }





 if (gmac->id > 3) {
  dev_err(dev, "invalid gmac id\n");
  return -EINVAL;
 }

 gmac->core_clk = devm_clk_get(dev, "stmmaceth");
 if (IS_ERR(gmac->core_clk)) {
  dev_err(dev, "missing stmmaceth clk property\n");
  return PTR_ERR(gmac->core_clk);
 }
 clk_set_rate(gmac->core_clk, 266000000);


 gmac->nss_common = syscon_regmap_lookup_by_phandle(dev->of_node,
          "qcom,nss-common");
 if (IS_ERR(gmac->nss_common)) {
  dev_err(dev, "missing nss-common node\n");
  return PTR_ERR(gmac->nss_common);
 }


 gmac->qsgmii_csr = syscon_regmap_lookup_by_phandle(dev->of_node,
          "qcom,qsgmii-csr");
 if (IS_ERR(gmac->qsgmii_csr))
  dev_err(dev, "missing qsgmii-csr node\n");

 return PTR_ERR_OR_ZERO(gmac->qsgmii_csr);
}
