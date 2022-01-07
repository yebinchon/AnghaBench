
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int tstamp_config; } ;
struct ifreq {int ifr_data; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,int *,int) ;

__attribute__((used)) static int xgbe_get_hwtstamp_settings(struct xgbe_prv_data *pdata,
          struct ifreq *ifreq)
{
 if (copy_to_user(ifreq->ifr_data, &pdata->tstamp_config,
    sizeof(pdata->tstamp_config)))
  return -EFAULT;

 return 0;
}
