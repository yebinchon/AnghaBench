
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {TYPE_2__* pci_dev; TYPE_1__* type; } ;
struct TYPE_4__ {int * resource; } ;
struct TYPE_3__ {int (* mem_bar ) (struct efx_nic*) ;} ;


 unsigned int resource_size (int *) ;
 int stub1 (struct efx_nic*) ;

__attribute__((used)) static unsigned int efx_ef10_mem_map_size(struct efx_nic *efx)
{
 int bar;

 bar = efx->type->mem_bar(efx);
 return resource_size(&efx->pci_dev->resource[bar]);
}
