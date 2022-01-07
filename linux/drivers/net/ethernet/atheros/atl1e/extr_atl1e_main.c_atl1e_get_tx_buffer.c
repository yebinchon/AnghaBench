
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1e_tx_ring {struct atl1e_tpd_desc* desc; struct atl1e_tx_buffer* tx_buffer; } ;
struct atl1e_tx_buffer {int dummy; } ;
struct atl1e_tpd_desc {int dummy; } ;
struct atl1e_adapter {struct atl1e_tx_ring tx_ring; } ;



__attribute__((used)) static struct atl1e_tx_buffer *
atl1e_get_tx_buffer(struct atl1e_adapter *adapter, struct atl1e_tpd_desc *tpd)
{
 struct atl1e_tx_ring *tx_ring = &adapter->tx_ring;

 return &tx_ring->tx_buffer[tpd - tx_ring->desc];
}
