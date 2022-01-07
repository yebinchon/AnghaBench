
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;


 int EOPNOTSUPP ;

int efx_ef10_sriov_set_vf_spoofchk(struct efx_nic *efx, int vf_i,
       bool spoofchk)
{
 return spoofchk ? -EOPNOTSUPP : 0;
}
