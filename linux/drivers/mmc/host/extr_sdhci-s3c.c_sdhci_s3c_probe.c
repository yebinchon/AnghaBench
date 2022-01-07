
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sdhci_s3c_drv_data {int sdhci_quirks; scalar_t__ no_divider; } ;
struct sdhci_s3c {int ext_cd_gpio; int cur_clk; struct sdhci_host* clk_io; scalar_t__ no_divider; int * clk_rates; struct sdhci_host** clk_bus; struct s3c_sdhci_platdata* pdata; struct platform_device* pdev; struct sdhci_host* host; } ;
struct sdhci_host {char* hw_name; int quirks; int irq; TYPE_2__* mmc; scalar_t__ quirks2; TYPE_1__* ops; struct sdhci_host* ioaddr; } ;
struct s3c_sdhci_platdata {int max_width; scalar_t__ cd_type; int pm_caps; int host_caps; int host_caps2; int (* cfg_gpio ) (struct platform_device*,int) ;} ;
struct resource {int dummy; } ;
struct device {int platform_data; scalar_t__ of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_4__ {int caps; int pm_caps; int caps2; } ;
struct TYPE_3__ {int get_max_clock; int get_min_clock; int set_clock; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (struct sdhci_host*) ;
 int MAX_BUS_CLK ;
 int MMC_CAP_4_BIT_DATA ;
 int MMC_CAP_8_BIT_DATA ;
 int MMC_CAP_NONREMOVABLE ;
 int PTR_ERR (struct sdhci_host*) ;
 scalar_t__ S3C_SDHCI_CD_INTERNAL ;
 scalar_t__ S3C_SDHCI_CD_NONE ;
 scalar_t__ S3C_SDHCI_CD_PERMANENT ;
 int SDHCI_QUIRK_32BIT_DMA_ADDR ;
 int SDHCI_QUIRK_32BIT_DMA_SIZE ;
 int SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC ;
 int SDHCI_QUIRK_BROKEN_CARD_DETECTION ;
 int SDHCI_QUIRK_BROKEN_DMA ;
 int SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK ;
 int SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12 ;
 int SDHCI_QUIRK_NO_BUSY_IRQ ;
 int SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC ;
 int SDHCI_QUIRK_NO_HISPD_BIT ;
 int clk_disable_unprepare (struct sdhci_host*) ;
 int clk_get_rate (struct sdhci_host*) ;
 int clk_prepare_enable (struct sdhci_host*) ;
 int dev_err (struct device*,char*) ;
 int dev_info (struct device*,char*,int,char*,int ) ;
 void* devm_clk_get (struct device*,char*) ;
 struct sdhci_host* devm_ioremap_resource (struct device*,struct resource*) ;
 struct s3c_sdhci_platdata* devm_kzalloc (struct device*,int,int ) ;
 int memcpy (struct s3c_sdhci_platdata*,int ,int) ;
 int mmc_of_parse (TYPE_2__*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int ) ;
 int platform_set_drvdata (struct platform_device*,struct sdhci_host*) ;
 int pm_runtime_disable (struct device*) ;
 int pm_runtime_enable (struct device*) ;
 int pm_runtime_set_autosuspend_delay (struct device*,int) ;
 int pm_runtime_use_autosuspend (struct device*) ;
 int pm_suspend_ignore_children (struct device*,int) ;
 int sdhci_add_host (struct sdhci_host*) ;
 struct sdhci_host* sdhci_alloc_host (struct device*,int) ;
 int sdhci_cmu_get_max_clock ;
 int sdhci_cmu_get_min_clock ;
 int sdhci_cmu_set_clock ;
 int sdhci_free_host (struct sdhci_host*) ;
 struct sdhci_s3c* sdhci_priv (struct sdhci_host*) ;
 struct sdhci_s3c_drv_data* sdhci_s3c_get_driver_data (struct platform_device*) ;
 TYPE_1__ sdhci_s3c_ops ;
 int sdhci_s3c_parse_dt (struct device*,struct sdhci_host*,struct s3c_sdhci_platdata*) ;
 int snprintf (char*,int,char*,int) ;
 int stub1 (struct platform_device*,int) ;

__attribute__((used)) static int sdhci_s3c_probe(struct platform_device *pdev)
{
 struct s3c_sdhci_platdata *pdata;
 struct sdhci_s3c_drv_data *drv_data;
 struct device *dev = &pdev->dev;
 struct sdhci_host *host;
 struct sdhci_s3c *sc;
 struct resource *res;
 int ret, irq, ptr, clks;

 if (!pdev->dev.platform_data && !pdev->dev.of_node) {
  dev_err(dev, "no device data specified\n");
  return -ENOENT;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0)
  return irq;

 host = sdhci_alloc_host(dev, sizeof(struct sdhci_s3c));
 if (IS_ERR(host)) {
  dev_err(dev, "sdhci_alloc_host() failed\n");
  return PTR_ERR(host);
 }
 sc = sdhci_priv(host);

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata) {
  ret = -ENOMEM;
  goto err_pdata_io_clk;
 }

 if (pdev->dev.of_node) {
  ret = sdhci_s3c_parse_dt(&pdev->dev, host, pdata);
  if (ret)
   goto err_pdata_io_clk;
 } else {
  memcpy(pdata, pdev->dev.platform_data, sizeof(*pdata));
  sc->ext_cd_gpio = -1;
 }

 drv_data = sdhci_s3c_get_driver_data(pdev);

 sc->host = host;
 sc->pdev = pdev;
 sc->pdata = pdata;
 sc->cur_clk = -1;

 platform_set_drvdata(pdev, host);

 sc->clk_io = devm_clk_get(dev, "hsmmc");
 if (IS_ERR(sc->clk_io)) {
  dev_err(dev, "failed to get io clock\n");
  ret = PTR_ERR(sc->clk_io);
  goto err_pdata_io_clk;
 }


 clk_prepare_enable(sc->clk_io);

 for (clks = 0, ptr = 0; ptr < MAX_BUS_CLK; ptr++) {
  char name[14];

  snprintf(name, 14, "mmc_busclk.%d", ptr);
  sc->clk_bus[ptr] = devm_clk_get(dev, name);
  if (IS_ERR(sc->clk_bus[ptr]))
   continue;

  clks++;
  sc->clk_rates[ptr] = clk_get_rate(sc->clk_bus[ptr]);

  dev_info(dev, "clock source %d: %s (%ld Hz)\n",
    ptr, name, sc->clk_rates[ptr]);
 }

 if (clks == 0) {
  dev_err(dev, "failed to find any bus clocks\n");
  ret = -ENOENT;
  goto err_no_busclks;
 }

 res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 host->ioaddr = devm_ioremap_resource(&pdev->dev, res);
 if (IS_ERR(host->ioaddr)) {
  ret = PTR_ERR(host->ioaddr);
  goto err_req_regs;
 }


 if (pdata->cfg_gpio)
  pdata->cfg_gpio(pdev, pdata->max_width);

 host->hw_name = "samsung-hsmmc";
 host->ops = &sdhci_s3c_ops;
 host->quirks = 0;
 host->quirks2 = 0;
 host->irq = irq;


 host->quirks |= SDHCI_QUIRK_NO_ENDATTR_IN_NOPDESC;
 host->quirks |= SDHCI_QUIRK_NO_HISPD_BIT;
 if (drv_data) {
  host->quirks |= drv_data->sdhci_quirks;
  sc->no_divider = drv_data->no_divider;
 }





 host->quirks |= SDHCI_QUIRK_BROKEN_DMA;






 host->quirks |= SDHCI_QUIRK_NO_BUSY_IRQ;


 host->quirks |= SDHCI_QUIRK_MULTIBLOCK_READ_ACMD12;


 host->quirks |= SDHCI_QUIRK_BROKEN_ADMA_ZEROLEN_DESC;

 if (pdata->cd_type == S3C_SDHCI_CD_NONE ||
     pdata->cd_type == S3C_SDHCI_CD_PERMANENT)
  host->quirks |= SDHCI_QUIRK_BROKEN_CARD_DETECTION;

 if (pdata->cd_type == S3C_SDHCI_CD_PERMANENT)
  host->mmc->caps = MMC_CAP_NONREMOVABLE;

 switch (pdata->max_width) {
 case 8:
  host->mmc->caps |= MMC_CAP_8_BIT_DATA;

 case 4:
  host->mmc->caps |= MMC_CAP_4_BIT_DATA;
  break;
 }

 if (pdata->pm_caps)
  host->mmc->pm_caps |= pdata->pm_caps;

 host->quirks |= (SDHCI_QUIRK_32BIT_DMA_ADDR |
    SDHCI_QUIRK_32BIT_DMA_SIZE);


 host->quirks |= SDHCI_QUIRK_DATA_TIMEOUT_USES_SDCLK;





 if (sc->no_divider) {
  sdhci_s3c_ops.set_clock = sdhci_cmu_set_clock;
  sdhci_s3c_ops.get_min_clock = sdhci_cmu_get_min_clock;
  sdhci_s3c_ops.get_max_clock = sdhci_cmu_get_max_clock;
 }


 if (pdata->host_caps)
  host->mmc->caps |= pdata->host_caps;

 if (pdata->host_caps2)
  host->mmc->caps2 |= pdata->host_caps2;

 pm_runtime_enable(&pdev->dev);
 pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
 pm_runtime_use_autosuspend(&pdev->dev);
 pm_suspend_ignore_children(&pdev->dev, 1);

 ret = mmc_of_parse(host->mmc);
 if (ret)
  goto err_req_regs;

 ret = sdhci_add_host(host);
 if (ret)
  goto err_req_regs;





 return 0;

 err_req_regs:
 pm_runtime_disable(&pdev->dev);

 err_no_busclks:
 clk_disable_unprepare(sc->clk_io);

 err_pdata_io_clk:
 sdhci_free_host(host);

 return ret;
}
