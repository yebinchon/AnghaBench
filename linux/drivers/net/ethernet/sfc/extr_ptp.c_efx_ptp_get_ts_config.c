
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ifreq {int ifr_data; } ;
struct efx_nic {TYPE_1__* ptp_data; } ;
struct TYPE_2__ {int config; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 scalar_t__ copy_to_user (int ,int *,int) ;

int efx_ptp_get_ts_config(struct efx_nic *efx, struct ifreq *ifr)
{
 if (!efx->ptp_data)
  return -EOPNOTSUPP;

 return copy_to_user(ifr->ifr_data, &efx->ptp_data->config,
       sizeof(efx->ptp_data->config)) ? -EFAULT : 0;
}
