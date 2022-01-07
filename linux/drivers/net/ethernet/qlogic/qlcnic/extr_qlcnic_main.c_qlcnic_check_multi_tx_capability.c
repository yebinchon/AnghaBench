
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_hardware_context {int* extra_capability; } ;
struct qlcnic_adapter {int state; struct qlcnic_hardware_context* ahw; } ;


 int QLCNIC_FW_CAPABILITY_2_MULTI_TX ;
 int __QLCNIC_MULTI_TX_UNIQUE ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static int qlcnic_check_multi_tx_capability(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 if (qlcnic_82xx_check(adapter) &&
     (ahw->extra_capability[0] & QLCNIC_FW_CAPABILITY_2_MULTI_TX)) {
  test_and_set_bit(__QLCNIC_MULTI_TX_UNIQUE, &adapter->state);
  return 0;
 } else {
  return 1;
 }
}
