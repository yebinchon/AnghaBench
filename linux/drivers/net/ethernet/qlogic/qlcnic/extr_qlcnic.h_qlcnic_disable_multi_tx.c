
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int drv_tx_rings; int state; } ;


 int QLCNIC_SINGLE_RING ;
 int __QLCNIC_MULTI_TX_UNIQUE ;
 int test_and_clear_bit (int ,int *) ;

__attribute__((used)) static inline void qlcnic_disable_multi_tx(struct qlcnic_adapter *adapter)
{
 test_and_clear_bit(__QLCNIC_MULTI_TX_UNIQUE, &adapter->state);
 adapter->drv_tx_rings = QLCNIC_SINGLE_RING;
}
