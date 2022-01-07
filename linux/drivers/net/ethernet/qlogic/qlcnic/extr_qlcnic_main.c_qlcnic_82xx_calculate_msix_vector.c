
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int drv_sds_rings; scalar_t__ drv_tx_rings; } ;


 scalar_t__ QLCNIC_SINGLE_RING ;
 scalar_t__ qlcnic_check_multi_tx (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_82xx_calculate_msix_vector(struct qlcnic_adapter *adapter)
{
 int num_msix;

 num_msix = adapter->drv_sds_rings;

 if (qlcnic_check_multi_tx(adapter))
  num_msix += adapter->drv_tx_rings;
 else
  num_msix += QLCNIC_SINGLE_RING;

 return num_msix;
}
