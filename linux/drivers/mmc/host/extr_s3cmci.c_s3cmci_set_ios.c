
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct s3cmci_host {int real_rate; int bus_width; scalar_t__ base; TYPE_3__* pdata; int is2440; TYPE_2__* pdev; } ;
struct mmc_ios {int power_mode; int clock; int bus_width; int vdd; } ;
struct mmc_host {int dummy; } ;
struct TYPE_6__ {int (* set_power ) (int,int ) ;} ;
struct TYPE_4__ {int of_node; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;





 int S3C2410_GPE (int) ;
 scalar_t__ S3C2410_SDICON ;
 int S3C2410_SDICON_CLOCKTYPE ;
 int S3C2410_SDICON_FIFORESET ;
 int S3C2440_SDICON_SDRESET ;
 int S3C_GPIO_PULL_NONE ;
 int S3C_GPIO_SFN (int) ;
 int dbg (struct s3cmci_host*,int ,char*,...) ;
 int dbg_conf ;
 int gpio_direction_output (int ,int ) ;
 struct s3cmci_host* mmc_priv (struct mmc_host*) ;
 int readl (scalar_t__) ;
 int s3c_gpio_cfgall_range (int ,int,int ,int ) ;
 int s3cmci_set_clk (struct s3cmci_host*,struct mmc_ios*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void s3cmci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios)
{
 struct s3cmci_host *host = mmc_priv(mmc);
 u32 mci_con;



 mci_con = readl(host->base + S3C2410_SDICON);

 switch (ios->power_mode) {
 case 129:
 case 128:

  if (!host->pdev->dev.of_node)
   s3c_gpio_cfgall_range(S3C2410_GPE(5), 6, S3C_GPIO_SFN(2),
           S3C_GPIO_PULL_NONE);

  if (host->pdata->set_power)
   host->pdata->set_power(ios->power_mode, ios->vdd);

  if (!host->is2440)
   mci_con |= S3C2410_SDICON_FIFORESET;

  break;

 case 130:
 default:
  if (!host->pdev->dev.of_node)
   gpio_direction_output(S3C2410_GPE(5), 0);

  if (host->is2440)
   mci_con |= S3C2440_SDICON_SDRESET;

  if (host->pdata->set_power)
   host->pdata->set_power(ios->power_mode, ios->vdd);

  break;
 }

 s3cmci_set_clk(host, ios);


 if (ios->clock)
  mci_con |= S3C2410_SDICON_CLOCKTYPE;
 else
  mci_con &= ~S3C2410_SDICON_CLOCKTYPE;

 writel(mci_con, host->base + S3C2410_SDICON);

 if ((ios->power_mode == 129) ||
     (ios->power_mode == 128)) {
  dbg(host, dbg_conf, "running at %lukHz (requested: %ukHz).\n",
   host->real_rate/1000, ios->clock/1000);
 } else {
  dbg(host, dbg_conf, "powered down.\n");
 }

 host->bus_width = ios->bus_width;
}
