
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {TYPE_2__* mcdi; } ;
struct TYPE_3__ {scalar_t__ logging_buffer; } ;
struct TYPE_4__ {TYPE_1__ iface; } ;


 int free_page (unsigned long) ;
 int kfree (TYPE_2__*) ;

void efx_mcdi_fini(struct efx_nic *efx)
{
 if (!efx->mcdi)
  return;





 kfree(efx->mcdi);
}
