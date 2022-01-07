
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct siena_nic_data {struct efx_channel* vfdi_channel; } ;
struct efx_channel {TYPE_1__* efx; } ;
struct TYPE_2__ {struct siena_nic_data* nic_data; } ;



__attribute__((used)) static int efx_siena_sriov_probe_channel(struct efx_channel *channel)
{
 struct siena_nic_data *nic_data = channel->efx->nic_data;
 nic_data->vfdi_channel = channel;

 return 0;
}
