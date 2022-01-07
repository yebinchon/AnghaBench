
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int pci_dev; } ;
struct eeh_dev {int dummy; } ;


 scalar_t__ eeh_dev_check_failure (struct eeh_dev*) ;
 struct eeh_dev* pci_dev_to_eeh_dev (int ) ;

int efx_try_recovery(struct efx_nic *efx)
{
 return 0;
}
