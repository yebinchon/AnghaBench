
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_mmc_host {int dummy; } ;


 int DM_CM_DTRAN_CTRL ;
 int DTRAN_CTRL_DM_START ;
 int TMIO_STAT_DATAEND ;
 int renesas_sdhi_internal_dmac_dm_write (struct tmio_mmc_host*,int ,int ) ;
 int tmio_mmc_enable_mmc_irqs (struct tmio_mmc_host*,int ) ;

__attribute__((used)) static void renesas_sdhi_internal_dmac_issue_tasklet_fn(unsigned long arg)
{
 struct tmio_mmc_host *host = (struct tmio_mmc_host *)arg;

 tmio_mmc_enable_mmc_irqs(host, TMIO_STAT_DATAEND);


 renesas_sdhi_internal_dmac_dm_write(host, DM_CM_DTRAN_CTRL,
         DTRAN_CTRL_DM_START);
}
