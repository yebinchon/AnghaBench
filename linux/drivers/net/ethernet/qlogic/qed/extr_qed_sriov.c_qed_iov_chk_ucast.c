
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_public_vf_info {int mac; scalar_t__ is_trusted_configured; } ;
struct qed_hwfn {int dummy; } ;
struct qed_filter_ucast {scalar_t__ type; int mac; } ;


 int EINVAL ;
 scalar_t__ QED_FILTER_MAC ;
 scalar_t__ QED_FILTER_MAC_VLAN ;
 int QED_IOV_WQ_BULLETIN_UPDATE_FLAG ;
 int ether_addr_copy (int ,int ) ;
 int qed_iov_bulletin_set_mac (struct qed_hwfn*,int ,int) ;
 struct qed_public_vf_info* qed_iov_get_public_vf_info (struct qed_hwfn*,int,int) ;
 int qed_schedule_iov (struct qed_hwfn*,int ) ;

__attribute__((used)) static int qed_iov_chk_ucast(struct qed_hwfn *hwfn,
        int vfid, struct qed_filter_ucast *params)
{
 struct qed_public_vf_info *vf;

 vf = qed_iov_get_public_vf_info(hwfn, vfid, 1);
 if (!vf)
  return -EINVAL;


 if (params->type == QED_FILTER_MAC ||
     params->type == QED_FILTER_MAC_VLAN) {
  ether_addr_copy(vf->mac, params->mac);

  if (vf->is_trusted_configured) {
   qed_iov_bulletin_set_mac(hwfn, vf->mac, vfid);


   qed_schedule_iov(hwfn, QED_IOV_WQ_BULLETIN_UPDATE_FLAG);
  }
 }

 return 0;
}
