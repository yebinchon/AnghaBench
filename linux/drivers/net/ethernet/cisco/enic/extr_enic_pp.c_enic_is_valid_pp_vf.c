
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int num_vfs; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int PORT_SELF_VF ;
 int enic_is_dynamic (struct enic*) ;
 scalar_t__ enic_sriov_enabled (struct enic*) ;

int enic_is_valid_pp_vf(struct enic *enic, int vf, int *err)
{
 if (vf != PORT_SELF_VF) {
  *err = -EOPNOTSUPP;
  goto err_out;

 }

 if (vf == PORT_SELF_VF && !enic_is_dynamic(enic)) {
  *err = -EOPNOTSUPP;
  goto err_out;
 }

 *err = 0;
 return 1;

err_out:
 return 0;
}
