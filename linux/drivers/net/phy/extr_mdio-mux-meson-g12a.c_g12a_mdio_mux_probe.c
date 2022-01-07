
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int of_node; } ;
struct platform_device {struct device dev; } ;
struct g12a_mdio_mux {int pclk; int mux_handle; int regs; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,...) ;
 int devm_clk_get (struct device*,char*) ;
 struct g12a_mdio_mux* devm_kzalloc (struct device*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int g12a_ephy_glue_clk_register (struct device*) ;
 int g12a_mdio_switch_fn ;
 int mdio_mux_init (struct device*,int ,int ,int *,struct device*,int *) ;
 int platform_set_drvdata (struct platform_device*,struct g12a_mdio_mux*) ;

__attribute__((used)) static int g12a_mdio_mux_probe(struct platform_device *pdev)
{
 struct device *dev = &pdev->dev;
 struct g12a_mdio_mux *priv;
 int ret;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 platform_set_drvdata(pdev, priv);

 priv->regs = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->regs))
  return PTR_ERR(priv->regs);

 priv->pclk = devm_clk_get(dev, "pclk");
 if (IS_ERR(priv->pclk)) {
  ret = PTR_ERR(priv->pclk);
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "failed to get peripheral clock\n");
  return ret;
 }


 ret = clk_prepare_enable(priv->pclk);
 if (ret) {
  dev_err(dev, "failed to enable peripheral clock");
  return ret;
 }


 ret = g12a_ephy_glue_clk_register(dev);
 if (ret)
  goto err;

 ret = mdio_mux_init(dev, dev->of_node, g12a_mdio_switch_fn,
       &priv->mux_handle, dev, ((void*)0));
 if (ret) {
  if (ret != -EPROBE_DEFER)
   dev_err(dev, "mdio multiplexer init failed: %d", ret);
  goto err;
 }

 return 0;

err:
 clk_disable_unprepare(priv->pclk);
 return ret;
}
