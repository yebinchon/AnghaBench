
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int chip; } ;
struct adapter {scalar_t__ t4_bar0; TYPE_1__ params; } ;


 scalar_t__ is_t4 (int ) ;
 scalar_t__ t4_read_pcie_cfg4 (struct adapter*,scalar_t__) ;

__attribute__((used)) static u32 t4_get_window(struct adapter *adap, u32 pci_base, u64 pci_mask,
    u32 memwin_base)
{
 u32 ret;

 if (is_t4(adap->params.chip)) {
  u32 bar0;
  bar0 = t4_read_pcie_cfg4(adap, pci_base);
  bar0 &= pci_mask;
  adap->t4_bar0 = bar0;

  ret = bar0 + memwin_base;
 } else {

  ret = memwin_base;
 }
 return ret;
}
