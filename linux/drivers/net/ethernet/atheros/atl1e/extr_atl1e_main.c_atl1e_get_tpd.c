
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct atl1e_tx_ring {size_t next_to_use; scalar_t__ count; struct atl1e_tpd_desc* desc; } ;
struct atl1e_tpd_desc {int dummy; } ;
struct atl1e_adapter {struct atl1e_tx_ring tx_ring; } ;


 int memset (struct atl1e_tpd_desc*,int ,int) ;

__attribute__((used)) static struct atl1e_tpd_desc *atl1e_get_tpd(struct atl1e_adapter *adapter)
{
 struct atl1e_tx_ring *tx_ring = &adapter->tx_ring;
 u16 next_to_use = 0;

 next_to_use = tx_ring->next_to_use;
 if (++tx_ring->next_to_use == tx_ring->count)
  tx_ring->next_to_use = 0;

 memset(&tx_ring->desc[next_to_use], 0, sizeof(struct atl1e_tpd_desc));
 return &tx_ring->desc[next_to_use];
}
