
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {TYPE_1__* ptp_data; } ;
struct efx_channel {int dummy; } ;
struct TYPE_2__ {struct efx_channel* channel; } ;



struct efx_channel *efx_ptp_channel(struct efx_nic *efx)
{
 return efx->ptp_data ? efx->ptp_data->channel : ((void*)0);
}
