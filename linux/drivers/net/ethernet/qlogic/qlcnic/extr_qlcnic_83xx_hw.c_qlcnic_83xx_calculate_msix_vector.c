
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int drv_sds_rings; int flags; scalar_t__ drv_tx_rings; } ;


 int QLCNIC_TX_INTR_SHARED ;

__attribute__((used)) static int qlcnic_83xx_calculate_msix_vector(struct qlcnic_adapter *adapter)
{
 int num_msix;

 num_msix = adapter->drv_sds_rings;


 num_msix += 1;

 if (!(adapter->flags & QLCNIC_TX_INTR_SHARED))
  num_msix += adapter->drv_tx_rings;

 return num_msix;
}
