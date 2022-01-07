
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u16 ;
struct TYPE_4__ {TYPE_1__* p_virt; } ;
struct qed_vf_info {TYPE_2__ bulletin; scalar_t__ b_malicious; } ;
struct qed_hwfn {int cdev; } ;
struct TYPE_3__ {int valid_bitmap; scalar_t__ pvid; } ;


 int DP_NOTICE (int ,char*,int) ;
 int VLAN_ADDR_FORCED ;
 int qed_iov_configure_vport_forced (struct qed_hwfn*,struct qed_vf_info*,int) ;
 struct qed_vf_info* qed_iov_get_vf_info (struct qed_hwfn*,scalar_t__,int) ;

__attribute__((used)) static void qed_iov_bulletin_set_forced_vlan(struct qed_hwfn *p_hwfn,
          u16 pvid, int vfid)
{
 struct qed_vf_info *vf_info;
 u64 feature;

 vf_info = qed_iov_get_vf_info(p_hwfn, (u16) vfid, 1);
 if (!vf_info) {
  DP_NOTICE(p_hwfn->cdev,
     "Can not set forced MAC, invalid vfid [%d]\n", vfid);
  return;
 }

 if (vf_info->b_malicious) {
  DP_NOTICE(p_hwfn->cdev,
     "Can't set forced vlan to malicious VF [%d]\n", vfid);
  return;
 }

 feature = 1 << VLAN_ADDR_FORCED;
 vf_info->bulletin.p_virt->pvid = pvid;
 if (pvid)
  vf_info->bulletin.p_virt->valid_bitmap |= feature;
 else
  vf_info->bulletin.p_virt->valid_bitmap &= ~feature;

 qed_iov_configure_vport_forced(p_hwfn, vf_info, feature);
}
