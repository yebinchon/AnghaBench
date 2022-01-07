
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qed_public_vf_info {scalar_t__ tx_rate; int link_state; int forced_vlan; int mac; int forced_mac; } ;
struct qed_mcp_link_state {scalar_t__ speed; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int * hwfns; } ;
struct ifla_vf_info {int vf; int min_tx_rate; scalar_t__ max_tx_rate; int linkstate; int spoofchk; int vlan; int mac; } ;


 int DP_VERBOSE (struct qed_dev*,int ,char*,int) ;
 int EINVAL ;
 scalar_t__ IS_VF (struct qed_dev*) ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int QED_MSG_IOV ;
 int ether_addr_copy (int ,int ) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 int qed_iov_get_link (struct qed_hwfn*,int,int *,struct qed_mcp_link_state*,int *) ;
 struct qed_public_vf_info* qed_iov_get_public_vf_info (struct qed_hwfn*,int,int) ;
 int qed_iov_get_vf_min_rate (struct qed_hwfn*,int) ;
 int qed_iov_is_valid_vfid (int *,int,int,int) ;
 int qed_iov_spoofchk_get (struct qed_hwfn*,int) ;

__attribute__((used)) static int qed_get_vf_config(struct qed_dev *cdev,
        int vf_id, struct ifla_vf_info *ivi)
{
 struct qed_hwfn *hwfn = QED_LEADING_HWFN(cdev);
 struct qed_public_vf_info *vf_info;
 struct qed_mcp_link_state link;
 u32 tx_rate;


 if (IS_VF(cdev))
  return -EINVAL;

 if (!qed_iov_is_valid_vfid(&cdev->hwfns[0], vf_id, 1, 0)) {
  DP_VERBOSE(cdev, QED_MSG_IOV,
      "VF index [%d] isn't active\n", vf_id);
  return -EINVAL;
 }

 vf_info = qed_iov_get_public_vf_info(hwfn, vf_id, 1);

 qed_iov_get_link(hwfn, vf_id, ((void*)0), &link, ((void*)0));


 ivi->vf = vf_id;

 if (is_valid_ether_addr(vf_info->forced_mac))
  ether_addr_copy(ivi->mac, vf_info->forced_mac);
 else
  ether_addr_copy(ivi->mac, vf_info->mac);

 ivi->vlan = vf_info->forced_vlan;
 ivi->spoofchk = qed_iov_spoofchk_get(hwfn, vf_id);
 ivi->linkstate = vf_info->link_state;
 tx_rate = vf_info->tx_rate;
 ivi->max_tx_rate = tx_rate ? tx_rate : link.speed;
 ivi->min_tx_rate = qed_iov_get_vf_min_rate(hwfn, vf_id);

 return 0;
}
