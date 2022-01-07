
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct dw_mci {int biu_clk; int ciu_clk; TYPE_2__* pdata; TYPE_1__* dma_ops; scalar_t__ use_dma; scalar_t__ slot; int dev; } ;
struct TYPE_4__ {int rstc; } ;
struct TYPE_3__ {int (* exit ) (struct dw_mci*) ;} ;


 int CLKENA ;
 int CLKSRC ;
 int INTMASK ;
 int IS_ERR (int ) ;
 int RINTSTS ;
 int clk_disable_unprepare (int ) ;
 int dev_dbg (int ,char*) ;
 int dw_mci_cleanup_slot (scalar_t__) ;
 int mci_writel (struct dw_mci*,int ,int) ;
 int reset_control_assert (int ) ;
 int stub1 (struct dw_mci*) ;

void dw_mci_remove(struct dw_mci *host)
{
 dev_dbg(host->dev, "remove slot\n");
 if (host->slot)
  dw_mci_cleanup_slot(host->slot);

 mci_writel(host, RINTSTS, 0xFFFFFFFF);
 mci_writel(host, INTMASK, 0);


 mci_writel(host, CLKENA, 0);
 mci_writel(host, CLKSRC, 0);

 if (host->use_dma && host->dma_ops->exit)
  host->dma_ops->exit(host);

 if (!IS_ERR(host->pdata->rstc))
  reset_control_assert(host->pdata->rstc);

 clk_disable_unprepare(host->ciu_clk);
 clk_disable_unprepare(host->biu_clk);
}
