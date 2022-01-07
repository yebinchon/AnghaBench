
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {int flags; int drv_sds_rings; TYPE_1__* ahw; } ;
struct TYPE_2__ {int num_msix; } ;


 int ENOMEM ;
 int QLCNIC_MSIX_ENABLED ;
 int QLCNIC_SINGLE_RING ;
 int QLCNIC_TSS_RSS ;
 int qlcnic_82xx_calculate_msix_vector (struct qlcnic_adapter*) ;
 int qlcnic_disable_multi_tx (struct qlcnic_adapter*) ;
 int qlcnic_enable_msi_legacy (struct qlcnic_adapter*) ;
 int qlcnic_enable_msix (struct qlcnic_adapter*,int) ;
 int qlcnic_setup_tss_rss_intr (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_82xx_setup_intr(struct qlcnic_adapter *adapter)
{
 int num_msix, err = 0;

 if (adapter->flags & QLCNIC_TSS_RSS) {
  err = qlcnic_setup_tss_rss_intr(adapter);
  if (err < 0)
   return err;
  num_msix = adapter->ahw->num_msix;
 } else {
  num_msix = qlcnic_82xx_calculate_msix_vector(adapter);

  err = qlcnic_enable_msix(adapter, num_msix);
  if (err == -ENOMEM)
   return err;

  if (!(adapter->flags & QLCNIC_MSIX_ENABLED)) {
   qlcnic_disable_multi_tx(adapter);
   adapter->drv_sds_rings = QLCNIC_SINGLE_RING;

   err = qlcnic_enable_msi_legacy(adapter);
   if (err)
    return err;
  }
 }

 return 0;
}
