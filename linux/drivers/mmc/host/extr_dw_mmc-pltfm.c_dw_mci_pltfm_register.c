
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct TYPE_3__ {int platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct dw_mci_drv_data {int dummy; } ;
struct dw_mci {scalar_t__ irq; int phy_regs; int regs; int pdata; scalar_t__ irq_flags; TYPE_1__* dev; struct dw_mci_drv_data const* drv_data; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int devm_ioremap_resource (TYPE_1__*,struct resource*) ;
 struct dw_mci* devm_kzalloc (TYPE_1__*,int,int ) ;
 int dw_mci_probe (struct dw_mci*) ;
 scalar_t__ platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct dw_mci*) ;

int dw_mci_pltfm_register(struct platform_device *pdev,
     const struct dw_mci_drv_data *drv_data)
{
 struct dw_mci *host;
 struct resource *regs;

 host = devm_kzalloc(&pdev->dev, sizeof(struct dw_mci), GFP_KERNEL);
 if (!host)
  return -ENOMEM;

 host->irq = platform_get_irq(pdev, 0);
 if (host->irq < 0)
  return host->irq;

 host->drv_data = drv_data;
 host->dev = &pdev->dev;
 host->irq_flags = 0;
 host->pdata = pdev->dev.platform_data;

 regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 host->regs = devm_ioremap_resource(&pdev->dev, regs);
 if (IS_ERR(host->regs))
  return PTR_ERR(host->regs);


 host->phy_regs = regs->start;

 platform_set_drvdata(pdev, host);
 return dw_mci_probe(host);
}
