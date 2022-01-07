
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* ptp_data; } ;
struct TYPE_2__ {int mode; } ;



int efx_ptp_get_mode(struct efx_nic *efx)
{
 return efx->ptp_data->mode;
}
