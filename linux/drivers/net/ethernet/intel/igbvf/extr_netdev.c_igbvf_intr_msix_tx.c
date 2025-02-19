
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct igbvf_ring {int eims_value; scalar_t__ set_itr; scalar_t__ itr_register; int itr_val; } ;
struct e1000_hw {scalar_t__ hw_addr; } ;
struct igbvf_adapter {scalar_t__ total_tx_packets; scalar_t__ total_tx_bytes; struct igbvf_ring* tx_ring; struct e1000_hw hw; } ;
typedef int irqreturn_t ;


 int EICS ;
 int EIMS ;
 int IRQ_HANDLED ;
 int ew32 (int ,int ) ;
 int igbvf_clean_tx_irq (struct igbvf_ring*) ;
 struct igbvf_adapter* netdev_priv (struct net_device*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static irqreturn_t igbvf_intr_msix_tx(int irq, void *data)
{
 struct net_device *netdev = data;
 struct igbvf_adapter *adapter = netdev_priv(netdev);
 struct e1000_hw *hw = &adapter->hw;
 struct igbvf_ring *tx_ring = adapter->tx_ring;

 if (tx_ring->set_itr) {
  writel(tx_ring->itr_val,
         adapter->hw.hw_addr + tx_ring->itr_register);
  adapter->tx_ring->set_itr = 0;
 }

 adapter->total_tx_bytes = 0;
 adapter->total_tx_packets = 0;




 if (!igbvf_clean_tx_irq(tx_ring))

  ew32(EICS, tx_ring->eims_value);
 else
  ew32(EIMS, tx_ring->eims_value);

 return IRQ_HANDLED;
}
