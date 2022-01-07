
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int device; } ;



__attribute__((used)) static unsigned int efx_ef10_pf_mem_bar(struct efx_nic *efx)
{
 switch (efx->pci_dev->device) {
 case 0x0b03:
  return 0;
 default:
  return 2;
 }
}
