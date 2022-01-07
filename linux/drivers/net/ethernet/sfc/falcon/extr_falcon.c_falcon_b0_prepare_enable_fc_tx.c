
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;


 int falcon_drain_tx_fifo (struct ef4_nic*) ;
 int falcon_reconfigure_xmac (struct ef4_nic*) ;
 int falcon_start_nic_stats (struct ef4_nic*) ;
 int falcon_stop_nic_stats (struct ef4_nic*) ;

__attribute__((used)) static void falcon_b0_prepare_enable_fc_tx(struct ef4_nic *efx)
{

 falcon_stop_nic_stats(efx);
 falcon_drain_tx_fifo(efx);
 falcon_reconfigure_xmac(efx);
 falcon_start_nic_stats(efx);
}
