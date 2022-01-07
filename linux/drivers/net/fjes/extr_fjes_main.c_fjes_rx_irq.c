
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fjes_hw {int dummy; } ;
struct fjes_adapter {int unset_rx_last; int napi; struct fjes_hw hw; } ;


 int REG_ICTL_MASK_RX_DATA ;
 int fjes_hw_set_irqmask (struct fjes_hw*,int ,int) ;
 int napi_schedule (int *) ;

__attribute__((used)) static void fjes_rx_irq(struct fjes_adapter *adapter, int src_epid)
{
 struct fjes_hw *hw = &adapter->hw;

 fjes_hw_set_irqmask(hw, REG_ICTL_MASK_RX_DATA, 1);

 adapter->unset_rx_last = 1;
 napi_schedule(&adapter->napi);
}
