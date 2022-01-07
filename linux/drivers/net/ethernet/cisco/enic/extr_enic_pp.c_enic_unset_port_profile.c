
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct enic {int dummy; } ;


 int ENIC_DEVCMD_PROXY_BY_INDEX (int,int,struct enic*,int ) ;
 int PORT_SELF_VF ;
 int enic_dev_status_to_errno (int) ;
 int enic_reset_addr_lists (struct enic*) ;
 int vnic_dev_deinit ;

__attribute__((used)) static int enic_unset_port_profile(struct enic *enic, int vf)
{
 int err;

 ENIC_DEVCMD_PROXY_BY_INDEX(vf, err, enic, vnic_dev_deinit);
 if (err)
  return enic_dev_status_to_errno(err);

 if (vf == PORT_SELF_VF)
  enic_reset_addr_lists(enic);

 return 0;
}
