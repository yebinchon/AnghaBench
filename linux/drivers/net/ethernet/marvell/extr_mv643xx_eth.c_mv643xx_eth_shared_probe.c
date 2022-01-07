
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int start; } ;
struct platform_device {int dev; } ;
struct mv643xx_eth_shared_private {int tx_csum_limit; int clk; int * base; } ;
struct mv643xx_eth_shared_platform_data {int tx_csum_limit; } ;
struct mbus_dram_target_info {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 int IS_ERR (int ) ;
 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct mv643xx_eth_shared_platform_data* dev_get_platdata (int *) ;
 int devm_clk_get (int *,int *) ;
 int * devm_ioremap (int *,int ,int ) ;
 struct mv643xx_eth_shared_private* devm_kzalloc (int *,int,int ) ;
 int infer_hw_params (struct mv643xx_eth_shared_private*) ;
 int mv643xx_eth_conf_mbus_windows (struct mv643xx_eth_shared_private*,struct mbus_dram_target_info const*) ;
 int mv643xx_eth_driver_version ;
 int mv643xx_eth_shared_of_probe (struct platform_device*) ;
 struct mbus_dram_target_info* mv_mbus_dram_info () ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct mv643xx_eth_shared_private*) ;
 int pr_notice (char*,int ) ;
 int resource_size (struct resource*) ;

__attribute__((used)) static int mv643xx_eth_shared_probe(struct platform_device *pdev)
{
 static int mv643xx_eth_version_printed;
 struct mv643xx_eth_shared_platform_data *pd;
 struct mv643xx_eth_shared_private *msp;
 const struct mbus_dram_target_info *dram;
 struct resource *res;
 int ret;

 if (!mv643xx_eth_version_printed++)
  pr_notice("MV-643xx 10/100/1000 ethernet driver version %s\n",
     mv643xx_eth_driver_version);

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (res == ((void*)0))
  return -EINVAL;

 msp = devm_kzalloc(&pdev->dev, sizeof(*msp), GFP_KERNEL);
 if (msp == ((void*)0))
  return -ENOMEM;
 platform_set_drvdata(pdev, msp);

 msp->base = devm_ioremap(&pdev->dev, res->start, resource_size(res));
 if (msp->base == ((void*)0))
  return -ENOMEM;

 msp->clk = devm_clk_get(&pdev->dev, ((void*)0));
 if (!IS_ERR(msp->clk))
  clk_prepare_enable(msp->clk);




 dram = mv_mbus_dram_info();
 if (dram)
  mv643xx_eth_conf_mbus_windows(msp, dram);

 ret = mv643xx_eth_shared_of_probe(pdev);
 if (ret)
  goto err_put_clk;
 pd = dev_get_platdata(&pdev->dev);

 msp->tx_csum_limit = (pd != ((void*)0) && pd->tx_csum_limit) ?
     pd->tx_csum_limit : 9 * 1024;
 infer_hw_params(msp);

 return 0;

err_put_clk:
 if (!IS_ERR(msp->clk))
  clk_disable_unprepare(msp->clk);
 return ret;
}
