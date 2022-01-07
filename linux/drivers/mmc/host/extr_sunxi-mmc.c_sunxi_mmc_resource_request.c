
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sunxi_mmc_host {scalar_t__ irq; void* reset; void* clk_sample; void* clk_output; TYPE_1__* cfg; void* clk_mmc; void* clk_ahb; void* reg_base; int mmc; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {scalar_t__ clk_delays; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (void*) ;
 int PTR_ERR (void*) ;
 int dev_err (int *,char*) ;
 void* devm_clk_get (int *,char*) ;
 void* devm_ioremap_resource (int *,int ) ;
 int devm_request_threaded_irq (int *,scalar_t__,int ,int ,int ,char*,struct sunxi_mmc_host*) ;
 void* devm_reset_control_get_optional_exclusive (int *,char*) ;
 int mmc_regulator_get_supply (int ) ;
 TYPE_1__* of_device_get_match_data (int *) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 int platform_get_resource (struct platform_device*,int ,int ) ;
 int sunxi_mmc_disable (struct sunxi_mmc_host*) ;
 int sunxi_mmc_enable (struct sunxi_mmc_host*) ;
 int sunxi_mmc_handle_manual_stop ;
 int sunxi_mmc_irq ;

__attribute__((used)) static int sunxi_mmc_resource_request(struct sunxi_mmc_host *host,
          struct platform_device *pdev)
{
 int ret;

 host->cfg = of_device_get_match_data(&pdev->dev);
 if (!host->cfg)
  return -EINVAL;

 ret = mmc_regulator_get_supply(host->mmc);
 if (ret)
  return ret;

 host->reg_base = devm_ioremap_resource(&pdev->dev,
         platform_get_resource(pdev, IORESOURCE_MEM, 0));
 if (IS_ERR(host->reg_base))
  return PTR_ERR(host->reg_base);

 host->clk_ahb = devm_clk_get(&pdev->dev, "ahb");
 if (IS_ERR(host->clk_ahb)) {
  dev_err(&pdev->dev, "Could not get ahb clock\n");
  return PTR_ERR(host->clk_ahb);
 }

 host->clk_mmc = devm_clk_get(&pdev->dev, "mmc");
 if (IS_ERR(host->clk_mmc)) {
  dev_err(&pdev->dev, "Could not get mmc clock\n");
  return PTR_ERR(host->clk_mmc);
 }

 if (host->cfg->clk_delays) {
  host->clk_output = devm_clk_get(&pdev->dev, "output");
  if (IS_ERR(host->clk_output)) {
   dev_err(&pdev->dev, "Could not get output clock\n");
   return PTR_ERR(host->clk_output);
  }

  host->clk_sample = devm_clk_get(&pdev->dev, "sample");
  if (IS_ERR(host->clk_sample)) {
   dev_err(&pdev->dev, "Could not get sample clock\n");
   return PTR_ERR(host->clk_sample);
  }
 }

 host->reset = devm_reset_control_get_optional_exclusive(&pdev->dev,
        "ahb");
 if (PTR_ERR(host->reset) == -EPROBE_DEFER)
  return PTR_ERR(host->reset);

 ret = sunxi_mmc_enable(host);
 if (ret)
  return ret;

 host->irq = platform_get_irq(pdev, 0);
 if (host->irq <= 0) {
  ret = -EINVAL;
  goto error_disable_mmc;
 }

 return devm_request_threaded_irq(&pdev->dev, host->irq, sunxi_mmc_irq,
   sunxi_mmc_handle_manual_stop, 0, "sunxi-mmc", host);

error_disable_mmc:
 sunxi_mmc_disable(host);
 return ret;
}
