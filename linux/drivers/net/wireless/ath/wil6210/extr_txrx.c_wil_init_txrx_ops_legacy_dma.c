
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rx_fini; int is_rx_idle; int rx_error_check; int rx_crypto_check; int get_netif_rx_params; int get_reorder_params; int wmi_addba_rx_resp; int rx_init; int tx_ring_modify; int tx_fini; int tx_init; int ring_init_bcast; int ring_fini_tx; int ring_init_tx; int tx_ring_tso; int tx_desc_unmap; int tx_desc_map; int configure_interrupt_moderation; } ;
struct wil6210_priv {TYPE_1__ txrx_ops; } ;


 int __wil_tx_vring_tso ;
 int wil_configure_interrupt_moderation ;
 int wil_get_netif_rx_params ;
 int wil_get_reorder_params ;
 int wil_is_rx_idle ;
 int wil_rx_crypto_check ;
 int wil_rx_error_check ;
 int wil_rx_fini ;
 int wil_rx_init ;
 int wil_tx_desc_map ;
 int wil_tx_fini ;
 int wil_tx_init ;
 int wil_tx_vring_modify ;
 int wil_txdesc_unmap ;
 int wil_vring_free ;
 int wil_vring_init_bcast ;
 int wil_vring_init_tx ;
 int wmi_addba_rx_resp ;

void wil_init_txrx_ops_legacy_dma(struct wil6210_priv *wil)
{
 wil->txrx_ops.configure_interrupt_moderation =
  wil_configure_interrupt_moderation;

 wil->txrx_ops.tx_desc_map = wil_tx_desc_map;
 wil->txrx_ops.tx_desc_unmap = wil_txdesc_unmap;
 wil->txrx_ops.tx_ring_tso = __wil_tx_vring_tso;
 wil->txrx_ops.ring_init_tx = wil_vring_init_tx;
 wil->txrx_ops.ring_fini_tx = wil_vring_free;
 wil->txrx_ops.ring_init_bcast = wil_vring_init_bcast;
 wil->txrx_ops.tx_init = wil_tx_init;
 wil->txrx_ops.tx_fini = wil_tx_fini;
 wil->txrx_ops.tx_ring_modify = wil_tx_vring_modify;

 wil->txrx_ops.rx_init = wil_rx_init;
 wil->txrx_ops.wmi_addba_rx_resp = wmi_addba_rx_resp;
 wil->txrx_ops.get_reorder_params = wil_get_reorder_params;
 wil->txrx_ops.get_netif_rx_params =
  wil_get_netif_rx_params;
 wil->txrx_ops.rx_crypto_check = wil_rx_crypto_check;
 wil->txrx_ops.rx_error_check = wil_rx_error_check;
 wil->txrx_ops.is_rx_idle = wil_is_rx_idle;
 wil->txrx_ops.rx_fini = wil_rx_fini;
}
