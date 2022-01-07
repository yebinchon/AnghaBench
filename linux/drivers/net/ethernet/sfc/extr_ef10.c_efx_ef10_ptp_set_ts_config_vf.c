
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwtstamp_config {int dummy; } ;
struct efx_nic {int dummy; } ;


 int EOPNOTSUPP ;

__attribute__((used)) static int efx_ef10_ptp_set_ts_config_vf(struct efx_nic *efx,
      struct hwtstamp_config *init)
{
 return -EOPNOTSUPP;
}
