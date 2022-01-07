
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atl1c_tpd_ring {scalar_t__ desc; struct atl1c_buffer* buffer_info; } ;
struct atl1c_tpd_desc {int dummy; } ;
struct atl1c_buffer {int dummy; } ;
struct atl1c_adapter {struct atl1c_tpd_ring* tpd_ring; } ;



__attribute__((used)) static struct atl1c_buffer *
atl1c_get_tx_buffer(struct atl1c_adapter *adapter, struct atl1c_tpd_desc *tpd)
{
 struct atl1c_tpd_ring *tpd_ring = adapter->tpd_ring;

 return &tpd_ring->buffer_info[tpd -
   (struct atl1c_tpd_desc *)tpd_ring->desc];
}
