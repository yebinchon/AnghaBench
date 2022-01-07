
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct board_info {int clock_core; int espi_nports; int chip_mac; int clock_mc4; } ;
struct TYPE_5__ {int sge; int tp; } ;
struct TYPE_6__ {TYPE_1__ params; int sge; int tp; scalar_t__ espi; scalar_t__ regs; } ;
typedef TYPE_2__ adapter_t ;


 scalar_t__ A_MC4_CFG ;
 scalar_t__ A_MC5_CONFIG ;
 int EIO ;
 int F_MC4_SLOW ;
 int F_M_BUS_ENABLE ;
 int F_READY ;
 int F_TCAM_RESET ;
 struct board_info* board_info (TYPE_2__*) ;
 int readl (scalar_t__) ;
 scalar_t__ t1_espi_init (scalar_t__,int ,int ) ;
 int t1_sge_configure (int ,int *) ;
 scalar_t__ t1_tp_reset (int ,int *,int ) ;
 int writel (int,scalar_t__) ;

int t1_init_hw_modules(adapter_t *adapter)
{
 int err = -EIO;
 const struct board_info *bi = board_info(adapter);

 if (!bi->clock_mc4) {
  u32 val = readl(adapter->regs + A_MC4_CFG);

  writel(val | F_READY | F_MC4_SLOW, adapter->regs + A_MC4_CFG);
  writel(F_M_BUS_ENABLE | F_TCAM_RESET,
         adapter->regs + A_MC5_CONFIG);
 }

 if (adapter->espi && t1_espi_init(adapter->espi, bi->chip_mac,
       bi->espi_nports))
  goto out_err;

 if (t1_tp_reset(adapter->tp, &adapter->params.tp, bi->clock_core))
  goto out_err;

 err = t1_sge_configure(adapter->sge, &adapter->params.sge);
 if (err)
  goto out_err;

 err = 0;
out_err:
 return err;
}
