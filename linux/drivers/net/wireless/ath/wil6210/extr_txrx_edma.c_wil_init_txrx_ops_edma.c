
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_fini; int is_rx_idle; int rx_error_check; int rx_crypto_check; int get_netif_rx_params; int get_reorder_params; int wmi_addba_rx_resp; int rx_init; int tx_ring_modify; int tx_ring_tso; int tx_desc_unmap; int tx_desc_map; int tx_fini; int tx_init; int ring_init_bcast; int ring_fini_tx; int ring_init_tx; int configure_interrupt_moderation; } ;
struct wil6210_priv {TYPE_1__ txrx_ops; } ;


 int __wil_tx_ring_tso_edma ;
 int wil_configure_interrupt_moderation_edma ;
 int wil_get_netif_rx_params_edma ;
 int wil_get_reorder_params_edma ;
 int wil_is_rx_idle_edma ;
 int wil_ring_free_edma ;
 int wil_ring_init_bcast_edma ;
 int wil_ring_init_tx_edma ;
 int wil_rx_crypto_check_edma ;
 int wil_rx_error_check_edma ;
 int wil_rx_fini_edma ;
 int wil_rx_init_edma ;
 int wil_tx_desc_map_edma ;
 int wil_tx_desc_unmap_edma ;
 int wil_tx_fini_edma ;
 int wil_tx_init_edma ;
 int wil_tx_ring_modify_edma ;
 int wmi_addba_rx_resp_edma ;

void wil_init_txrx_ops_edma(struct wil6210_priv *wil)
{
 wil->txrx_ops.configure_interrupt_moderation =
  wil_configure_interrupt_moderation_edma;

 wil->txrx_ops.ring_init_tx = wil_ring_init_tx_edma;
 wil->txrx_ops.ring_fini_tx = wil_ring_free_edma;
 wil->txrx_ops.ring_init_bcast = wil_ring_init_bcast_edma;
 wil->txrx_ops.tx_init = wil_tx_init_edma;
 wil->txrx_ops.tx_fini = wil_tx_fini_edma;
 wil->txrx_ops.tx_desc_map = wil_tx_desc_map_edma;
 wil->txrx_ops.tx_desc_unmap = wil_tx_desc_unmap_edma;
 wil->txrx_ops.tx_ring_tso = __wil_tx_ring_tso_edma;
 wil->txrx_ops.tx_ring_modify = wil_tx_ring_modify_edma;

 wil->txrx_ops.rx_init = wil_rx_init_edma;
 wil->txrx_ops.wmi_addba_rx_resp = wmi_addba_rx_resp_edma;
 wil->txrx_ops.get_reorder_params = wil_get_reorder_params_edma;
 wil->txrx_ops.get_netif_rx_params = wil_get_netif_rx_params_edma;
 wil->txrx_ops.rx_crypto_check = wil_rx_crypto_check_edma;
 wil->txrx_ops.rx_error_check = wil_rx_error_check_edma;
 wil->txrx_ops.is_rx_idle = wil_is_rx_idle_edma;
 wil->txrx_ops.rx_fini = wil_rx_fini_edma;
}
