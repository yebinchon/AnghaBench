
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qed_spq_comp_cb {void* cookie; int function; } ;
struct qed_ntuple_filter_params {int qid; int vf_id; scalar_t__ vport_id; scalar_t__ b_is_vf; } ;
struct qed_hwfn {int dummy; } ;
struct qed_dev {int dummy; } ;


 int DP_INFO (struct qed_hwfn*,char*,int ) ;
 int DP_NOTICE (struct qed_hwfn*,char*) ;
 int DP_VERBOSE (struct qed_hwfn*,int ,char*) ;
 int EINVAL ;
 int NETIF_MSG_DRV ;
 struct qed_hwfn* QED_LEADING_HWFN (struct qed_dev*) ;
 int QED_RFS_NTUPLE_QID_RSS ;
 int qed_arfs_sp_response_handler ;
 int qed_configure_rfs_ntuple_filter (struct qed_hwfn*,struct qed_spq_comp_cb*,struct qed_ntuple_filter_params*) ;
 int qed_iov_is_valid_vfid (struct qed_hwfn*,int ,int,int) ;

__attribute__((used)) static int
qed_ntuple_arfs_filter_config(struct qed_dev *cdev,
         void *cookie,
         struct qed_ntuple_filter_params *params)
{
 struct qed_hwfn *p_hwfn = QED_LEADING_HWFN(cdev);
 struct qed_spq_comp_cb cb;
 int rc = -EINVAL;

 cb.function = qed_arfs_sp_response_handler;
 cb.cookie = cookie;

 if (params->b_is_vf) {
  if (!qed_iov_is_valid_vfid(p_hwfn, params->vf_id, 0,
        0)) {
   DP_INFO(p_hwfn, "vfid 0x%02x is out of bounds\n",
    params->vf_id);
   return rc;
  }

  params->vport_id = params->vf_id + 1;
  params->qid = QED_RFS_NTUPLE_QID_RSS;
 }

 rc = qed_configure_rfs_ntuple_filter(p_hwfn, &cb, params);
 if (rc)
  DP_NOTICE(p_hwfn,
     "Failed to issue a-RFS filter configuration\n");
 else
  DP_VERBOSE(p_hwfn, NETIF_MSG_DRV,
      "Successfully issued a-RFS filter configuration\n");

 return rc;
}
