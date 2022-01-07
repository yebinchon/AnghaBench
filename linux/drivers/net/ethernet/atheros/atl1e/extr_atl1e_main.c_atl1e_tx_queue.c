
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct atl1e_tx_ring {int next_to_use; } ;
struct atl1e_tpd_desc {int dummy; } ;
struct atl1e_adapter {int hw; struct atl1e_tx_ring tx_ring; } ;


 int AT_WRITE_REG (int *,int ,int ) ;
 int REG_MB_TPD_PROD_IDX ;
 int wmb () ;

__attribute__((used)) static void atl1e_tx_queue(struct atl1e_adapter *adapter, u16 count,
      struct atl1e_tpd_desc *tpd)
{
 struct atl1e_tx_ring *tx_ring = &adapter->tx_ring;




 wmb();
 AT_WRITE_REG(&adapter->hw, REG_MB_TPD_PROD_IDX, tx_ring->next_to_use);
}
