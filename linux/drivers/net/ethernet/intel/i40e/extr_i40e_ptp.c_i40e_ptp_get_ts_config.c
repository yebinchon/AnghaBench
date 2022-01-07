
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_data; } ;
struct hwtstamp_config {int dummy; } ;
struct i40e_pf {int flags; struct hwtstamp_config tstamp_config; } ;


 int EFAULT ;
 int EOPNOTSUPP ;
 int I40E_FLAG_PTP ;
 scalar_t__ copy_to_user (int ,struct hwtstamp_config*,int) ;

int i40e_ptp_get_ts_config(struct i40e_pf *pf, struct ifreq *ifr)
{
 struct hwtstamp_config *config = &pf->tstamp_config;

 if (!(pf->flags & I40E_FLAG_PTP))
  return -EOPNOTSUPP;

 return copy_to_user(ifr->ifr_data, config, sizeof(*config)) ?
  -EFAULT : 0;
}
