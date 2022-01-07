
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct igbvf_ring {scalar_t__ itr_register; int itr_val; int eims_value; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct igbvf_adapter {int eims_other; int eims_enable_mask; struct igbvf_ring* rx_ring; struct igbvf_ring* tx_ring; struct e1000_hw hw; } ;


 int BIT (int) ;
 int E1000_IVAR_VALID ;
 int GENMASK (int,int ) ;
 int IGBVF_NO_QUEUE ;
 int IVAR_MISC ;
 int e1e_flush () ;
 int ew32 (int ,int) ;
 int igbvf_assign_vector (struct igbvf_adapter*,int ,int ,int ) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void igbvf_configure_msix(struct igbvf_adapter *adapter)
{
 u32 tmp;
 struct e1000_hw *hw = &adapter->hw;
 struct igbvf_ring *tx_ring = adapter->tx_ring;
 struct igbvf_ring *rx_ring = adapter->rx_ring;
 int vector = 0;

 adapter->eims_enable_mask = 0;

 igbvf_assign_vector(adapter, IGBVF_NO_QUEUE, 0, vector++);
 adapter->eims_enable_mask |= tx_ring->eims_value;
 writel(tx_ring->itr_val, hw->hw_addr + tx_ring->itr_register);
 igbvf_assign_vector(adapter, 0, IGBVF_NO_QUEUE, vector++);
 adapter->eims_enable_mask |= rx_ring->eims_value;
 writel(rx_ring->itr_val, hw->hw_addr + rx_ring->itr_register);



 tmp = (vector++ | E1000_IVAR_VALID);

 ew32(IVAR_MISC, tmp);

 adapter->eims_enable_mask = GENMASK(vector - 1, 0);
 adapter->eims_other = BIT(vector - 1);
 e1e_flush();
}
