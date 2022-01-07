
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_host_tx_ring {int crb_intr_mask; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int diag_test; } ;


 scalar_t__ qlcnic_check_multi_tx (struct qlcnic_adapter*) ;
 int writel (int,int ) ;

__attribute__((used)) static inline void
qlcnic_82xx_disable_tx_intr(struct qlcnic_adapter *adapter,
       struct qlcnic_host_tx_ring *tx_ring)
{
 if (qlcnic_check_multi_tx(adapter) &&
     !adapter->ahw->diag_test)
  writel(1, tx_ring->crb_intr_mask);
}
