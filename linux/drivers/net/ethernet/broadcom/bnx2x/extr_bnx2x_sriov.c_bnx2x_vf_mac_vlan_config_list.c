
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bnx2x_virtf {int abs_vfid; } ;
struct bnx2x_vf_mac_vlan_filters {int count; TYPE_1__* filters; } ;
struct bnx2x {int dummy; } ;
struct TYPE_2__ {int add; int applied; } ;


 int BNX2X_ERR (char*,int,int) ;
 int BNX2X_MSG_IOV ;
 int DP (int ,char*,int ) ;
 int EINVAL ;
 int bnx2x_validate_vf_sp_objs (struct bnx2x*,struct bnx2x_virtf*,int) ;
 int bnx2x_vf_mac_vlan_config (struct bnx2x*,struct bnx2x_virtf*,int,TYPE_1__*,int) ;
 int kfree (struct bnx2x_vf_mac_vlan_filters*) ;

int bnx2x_vf_mac_vlan_config_list(struct bnx2x *bp, struct bnx2x_virtf *vf,
      struct bnx2x_vf_mac_vlan_filters *filters,
      int qid, bool drv_only)
{
 int rc = 0, i;

 DP(BNX2X_MSG_IOV, "vf[%d]\n", vf->abs_vfid);

 if (!bnx2x_validate_vf_sp_objs(bp, vf, 1))
  return -EINVAL;


 for (i = 0; i < filters->count; i++) {
  rc = bnx2x_vf_mac_vlan_config(bp, vf, qid,
           &filters->filters[i], drv_only);
  if (rc)
   break;
 }


 if (i != filters->count) {
  BNX2X_ERR("Managed only %d/%d filters - rolling back\n",
     i, filters->count);
  while (--i >= 0) {
   if (!filters->filters[i].applied)
    continue;
   filters->filters[i].add = !filters->filters[i].add;
   bnx2x_vf_mac_vlan_config(bp, vf, qid,
       &filters->filters[i],
       drv_only);
  }
 }


 kfree(filters);

 return rc;
}
