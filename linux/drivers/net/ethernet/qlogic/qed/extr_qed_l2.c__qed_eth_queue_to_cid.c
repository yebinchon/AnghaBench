
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qed_queue_start_common_params {int sb_idx; TYPE_1__* p_sb; int stats_id; int queue_id; int vport_id; } ;
struct qed_queue_cid_vf_params {scalar_t__ vfid; int qid_usage_idx; int vf_legacy; int vf_qid; } ;
struct TYPE_4__ {int stats_id; int queue_id; int vport_id; } ;
struct qed_queue_cid {int b_is_rx; scalar_t__ vfid; int sb_idx; int sb_igu_id; TYPE_2__ abs; TYPE_2__ rel; int qid_usage_idx; int cid; int opaque_fid; int vf_legacy; int vf_qid; struct qed_hwfn* p_owner; } ;
struct qed_hwfn {int cdev; } ;
struct TYPE_3__ {int igu_sb_id; } ;


 int DP_VERBOSE (struct qed_hwfn*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ IS_VF (int ) ;
 int QED_MSG_SP ;
 scalar_t__ QED_QUEUE_CID_SELF ;
 int qed_eth_queue_qid_usage_add (struct qed_hwfn*,struct qed_queue_cid*) ;
 int qed_fw_l2_queue (struct qed_hwfn*,int ,int *) ;
 int qed_fw_vport (struct qed_hwfn*,int ,int *) ;
 int vfree (struct qed_queue_cid*) ;
 struct qed_queue_cid* vzalloc (int) ;

__attribute__((used)) static struct qed_queue_cid *
_qed_eth_queue_to_cid(struct qed_hwfn *p_hwfn,
        u16 opaque_fid,
        u32 cid,
        struct qed_queue_start_common_params *p_params,
        bool b_is_rx,
        struct qed_queue_cid_vf_params *p_vf_params)
{
 struct qed_queue_cid *p_cid;
 int rc;

 p_cid = vzalloc(sizeof(*p_cid));
 if (!p_cid)
  return ((void*)0);

 p_cid->opaque_fid = opaque_fid;
 p_cid->cid = cid;
 p_cid->p_owner = p_hwfn;


 p_cid->rel.vport_id = p_params->vport_id;
 p_cid->rel.queue_id = p_params->queue_id;
 p_cid->rel.stats_id = p_params->stats_id;
 p_cid->sb_igu_id = p_params->p_sb->igu_sb_id;
 p_cid->b_is_rx = b_is_rx;
 p_cid->sb_idx = p_params->sb_idx;


 if (p_vf_params) {
  p_cid->vfid = p_vf_params->vfid;
  p_cid->vf_qid = p_vf_params->vf_qid;
  p_cid->vf_legacy = p_vf_params->vf_legacy;
 } else {
  p_cid->vfid = QED_QUEUE_CID_SELF;
 }


 if (IS_VF(p_hwfn->cdev)) {
  p_cid->abs = p_cid->rel;
  goto out;
 }





 rc = qed_fw_vport(p_hwfn, p_cid->rel.vport_id, &p_cid->abs.vport_id);
 if (rc)
  goto fail;

 rc = qed_fw_l2_queue(p_hwfn, p_cid->rel.queue_id, &p_cid->abs.queue_id);
 if (rc)
  goto fail;




 if (p_cid->vfid == QED_QUEUE_CID_SELF) {
  rc = qed_fw_vport(p_hwfn, p_cid->rel.stats_id,
      &p_cid->abs.stats_id);
  if (rc)
   goto fail;
 } else {
  p_cid->abs.stats_id = p_cid->rel.stats_id;
 }

out:



 if (!p_vf_params) {
  if (!qed_eth_queue_qid_usage_add(p_hwfn, p_cid))
   goto fail;
 } else {
  p_cid->qid_usage_idx = p_vf_params->qid_usage_idx;
 }

 DP_VERBOSE(p_hwfn,
     QED_MSG_SP,
     "opaque_fid: %04x CID %08x vport %02x [%02x] qzone %04x.%02x [%04x] stats %02x [%02x] SB %04x PI %02x\n",
     p_cid->opaque_fid,
     p_cid->cid,
     p_cid->rel.vport_id,
     p_cid->abs.vport_id,
     p_cid->rel.queue_id,
     p_cid->qid_usage_idx,
     p_cid->abs.queue_id,
     p_cid->rel.stats_id,
     p_cid->abs.stats_id, p_cid->sb_igu_id, p_cid->sb_idx);

 return p_cid;

fail:
 vfree(p_cid);
 return ((void*)0);
}
