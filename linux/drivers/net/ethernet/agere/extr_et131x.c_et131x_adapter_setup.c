
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct et131x_adapter {TYPE_2__* regs; } ;
struct TYPE_3__ {int mmc_ctrl; } ;
struct TYPE_4__ {TYPE_1__ mmc; } ;


 int ET_MMC_ENABLE ;
 int et1310_config_mac_regs1 (struct et131x_adapter*) ;
 int et1310_config_macstat_regs (struct et131x_adapter*) ;
 int et1310_config_rxmac_regs (struct et131x_adapter*) ;
 int et1310_config_txmac_regs (struct et131x_adapter*) ;
 int et1310_phy_power_switch (struct et131x_adapter*,int ) ;
 int et131x_config_rx_dma_regs (struct et131x_adapter*) ;
 int et131x_config_tx_dma_regs (struct et131x_adapter*) ;
 int et131x_configure_global_regs (struct et131x_adapter*) ;
 int et131x_xcvr_init (struct et131x_adapter*) ;
 int writel (int ,int *) ;

__attribute__((used)) static void et131x_adapter_setup(struct et131x_adapter *adapter)
{
 et131x_configure_global_regs(adapter);
 et1310_config_mac_regs1(adapter);



 writel(ET_MMC_ENABLE, &adapter->regs->mmc.mmc_ctrl);

 et1310_config_rxmac_regs(adapter);
 et1310_config_txmac_regs(adapter);

 et131x_config_rx_dma_regs(adapter);
 et131x_config_tx_dma_regs(adapter);

 et1310_config_macstat_regs(adapter);

 et1310_phy_power_switch(adapter, 0);
 et131x_xcvr_init(adapter);
}
