
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qed_vf_info {int configured_features; } ;
struct qed_hwfn {int dummy; } ;


 int BIT (int) ;
 int VLAN_ADDR_FORCED ;
 int qed_iov_reconfigure_unicast_vlan (struct qed_hwfn*,struct qed_vf_info*) ;

__attribute__((used)) static int
qed_iov_reconfigure_unicast_shadow(struct qed_hwfn *p_hwfn,
       struct qed_vf_info *p_vf, u64 events)
{
 int rc = 0;

 if ((events & BIT(VLAN_ADDR_FORCED)) &&
     !(p_vf->configured_features & (1 << VLAN_ADDR_FORCED)))
  rc = qed_iov_reconfigure_unicast_vlan(p_hwfn, p_vf);

 return rc;
}
