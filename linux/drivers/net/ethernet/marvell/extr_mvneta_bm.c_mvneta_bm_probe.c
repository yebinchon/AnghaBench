
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mvneta_bm {int clk; struct platform_device* pdev; int reg_base; } ;
struct device_node {struct mvneta_bm* data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (TYPE_1__*,char*) ;
 int dev_info (TYPE_1__*,char*) ;
 int devm_clk_get (TYPE_1__*,int *) ;
 struct mvneta_bm* devm_kzalloc (TYPE_1__*,int,int ) ;
 int devm_platform_ioremap_resource (struct platform_device*,int ) ;
 int mvneta_bm_get_sram (struct device_node*,struct mvneta_bm*) ;
 int mvneta_bm_init (struct mvneta_bm*) ;
 int mvneta_bm_put_sram (struct mvneta_bm*) ;
 int platform_set_drvdata (struct platform_device*,struct mvneta_bm*) ;

__attribute__((used)) static int mvneta_bm_probe(struct platform_device *pdev)
{
 struct device_node *dn = pdev->dev.of_node;
 struct mvneta_bm *priv;
 int err;

 priv = devm_kzalloc(&pdev->dev, sizeof(struct mvneta_bm), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->reg_base = devm_platform_ioremap_resource(pdev, 0);
 if (IS_ERR(priv->reg_base))
  return PTR_ERR(priv->reg_base);

 priv->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (IS_ERR(priv->clk))
  return PTR_ERR(priv->clk);
 err = clk_prepare_enable(priv->clk);
 if (err < 0)
  return err;

 err = mvneta_bm_get_sram(dn, priv);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to allocate internal memory\n");
  goto err_clk;
 }

 priv->pdev = pdev;


 err = mvneta_bm_init(priv);
 if (err < 0) {
  dev_err(&pdev->dev, "failed to initialize controller\n");
  goto err_sram;
 }

 dn->data = priv;
 platform_set_drvdata(pdev, priv);

 dev_info(&pdev->dev, "Buffer Manager for network controller enabled\n");

 return 0;

err_sram:
 mvneta_bm_put_sram(priv);
err_clk:
 clk_disable_unprepare(priv->clk);
 return err;
}
