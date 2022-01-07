
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int dummy; } ;
struct efx_nic {int ptp_data; } ;
typedef int config ;


 int EFAULT ;
 int EOPNOTSUPP ;
 scalar_t__ copy_from_user (struct hwtstamp_config*,int ,int) ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;
 int efx_ptp_ts_init (struct efx_nic*,struct hwtstamp_config*) ;

int efx_ptp_set_ts_config(struct efx_nic *efx, struct ifreq *ifr)
{
 struct hwtstamp_config config;
 int rc;


 if (!efx->ptp_data)
  return -EOPNOTSUPP;

 if (copy_from_user(&config, ifr->ifr_data, sizeof(config)))
  return -EFAULT;

 rc = efx_ptp_ts_init(efx, &config);
 if (rc != 0)
  return rc;

 return copy_to_user(ifr->ifr_data, &config, sizeof(config))
  ? -EFAULT : 0;
}
