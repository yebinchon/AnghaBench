
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct netsec_priv {int clk; int freq; int phy_np; } ;


 int EINVAL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get_rate (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int devm_clk_get (TYPE_1__*,int *) ;
 int of_mdio_parse_addr (TYPE_1__*,int ) ;
 int of_parse_phandle (int ,char*,int ) ;

__attribute__((used)) static int netsec_of_probe(struct platform_device *pdev,
      struct netsec_priv *priv, u32 *phy_addr)
{
 priv->phy_np = of_parse_phandle(pdev->dev.of_node, "phy-handle", 0);
 if (!priv->phy_np) {
  dev_err(&pdev->dev, "missing required property 'phy-handle'\n");
  return -EINVAL;
 }

 *phy_addr = of_mdio_parse_addr(&pdev->dev, priv->phy_np);

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk)) {
  dev_err(&pdev->dev, "phy_ref_clk not found\n");
  return PTR_ERR(priv->clk);
 }
 priv->freq = clk_get_rate(priv->clk);

 return 0;
}
