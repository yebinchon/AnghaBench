
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct s3cmci_host {int is2440; struct mmc_host* mmc; struct platform_device* pdev; } ;
struct s3c24xx_mci_pdata {int dummy; } ;
struct TYPE_3__ {struct s3c24xx_mci_pdata* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mmc_host {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct s3c24xx_mci_pdata* devm_kzalloc (TYPE_1__*,int,int ) ;
 int mmc_of_parse (struct mmc_host*) ;
 scalar_t__ of_device_get_match_data (TYPE_1__*) ;

__attribute__((used)) static int s3cmci_probe_dt(struct s3cmci_host *host)
{
 struct platform_device *pdev = host->pdev;
 struct s3c24xx_mci_pdata *pdata;
 struct mmc_host *mmc = host->mmc;
 int ret;

 host->is2440 = (int) of_device_get_match_data(&pdev->dev);

 ret = mmc_of_parse(mmc);
 if (ret)
  return ret;

 pdata = devm_kzalloc(&pdev->dev, sizeof(*pdata), GFP_KERNEL);
 if (!pdata)
  return -ENOMEM;

 pdev->dev.platform_data = pdata;

 return 0;
}
