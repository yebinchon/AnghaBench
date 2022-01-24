#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct qed_queue_start_common_params {int /*<<< orphan*/  sb_idx; TYPE_1__* p_sb; int /*<<< orphan*/  stats_id; int /*<<< orphan*/  queue_id; int /*<<< orphan*/  vport_id; } ;
struct qed_queue_cid_vf_params {scalar_t__ vfid; int /*<<< orphan*/  qid_usage_idx; int /*<<< orphan*/  vf_legacy; int /*<<< orphan*/  vf_qid; } ;
struct TYPE_4__ {int /*<<< orphan*/  stats_id; int /*<<< orphan*/  queue_id; int /*<<< orphan*/  vport_id; } ;
struct qed_queue_cid {int b_is_rx; scalar_t__ vfid; int /*<<< orphan*/  sb_idx; int /*<<< orphan*/  sb_igu_id; TYPE_2__ abs; TYPE_2__ rel; int /*<<< orphan*/  qid_usage_idx; int /*<<< orphan*/  cid; int /*<<< orphan*/  opaque_fid; int /*<<< orphan*/  vf_legacy; int /*<<< orphan*/  vf_qid; struct qed_hwfn* p_owner; } ;
struct qed_hwfn {int /*<<< orphan*/  cdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  igu_sb_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QED_MSG_SP ; 
 scalar_t__ QED_QUEUE_CID_SELF ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_queue_cid*) ; 
 int FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct qed_hwfn*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_queue_cid*) ; 
 struct qed_queue_cid* FUNC6 (int) ; 

__attribute__((used)) static struct qed_queue_cid *
FUNC7(struct qed_hwfn *p_hwfn,
		      u16 opaque_fid,
		      u32 cid,
		      struct qed_queue_start_common_params *p_params,
		      bool b_is_rx,
		      struct qed_queue_cid_vf_params *p_vf_params)
{
	struct qed_queue_cid *p_cid;
	int rc;

	p_cid = FUNC6(sizeof(*p_cid));
	if (!p_cid)
		return NULL;

	p_cid->opaque_fid = opaque_fid;
	p_cid->cid = cid;
	p_cid->p_owner = p_hwfn;

	/* Fill in parameters */
	p_cid->rel.vport_id = p_params->vport_id;
	p_cid->rel.queue_id = p_params->queue_id;
	p_cid->rel.stats_id = p_params->stats_id;
	p_cid->sb_igu_id = p_params->p_sb->igu_sb_id;
	p_cid->b_is_rx = b_is_rx;
	p_cid->sb_idx = p_params->sb_idx;

	/* Fill-in bits related to VFs' queues if information was provided */
	if (p_vf_params) {
		p_cid->vfid = p_vf_params->vfid;
		p_cid->vf_qid = p_vf_params->vf_qid;
		p_cid->vf_legacy = p_vf_params->vf_legacy;
	} else {
		p_cid->vfid = QED_QUEUE_CID_SELF;
	}

	/* Don't try calculating the absolute indices for VFs */
	if (FUNC1(p_hwfn->cdev)) {
		p_cid->abs = p_cid->rel;
		goto out;
	}

	/* Calculate the engine-absolute indices of the resources.
	 * This would guarantee they're valid later on.
	 * In some cases [SBs] we already have the right values.
	 */
	rc = FUNC4(p_hwfn, p_cid->rel.vport_id, &p_cid->abs.vport_id);
	if (rc)
		goto fail;

	rc = FUNC3(p_hwfn, p_cid->rel.queue_id, &p_cid->abs.queue_id);
	if (rc)
		goto fail;

	/* In case of a PF configuring its VF's queues, the stats-id is already
	 * absolute [since there's a single index that's suitable per-VF].
	 */
	if (p_cid->vfid == QED_QUEUE_CID_SELF) {
		rc = FUNC4(p_hwfn, p_cid->rel.stats_id,
				  &p_cid->abs.stats_id);
		if (rc)
			goto fail;
	} else {
		p_cid->abs.stats_id = p_cid->rel.stats_id;
	}

out:
	/* VF-images have provided the qid_usage_idx on their own.
	 * Otherwise, we need to allocate a unique one.
	 */
	if (!p_vf_params) {
		if (!FUNC2(p_hwfn, p_cid))
			goto fail;
	} else {
		p_cid->qid_usage_idx = p_vf_params->qid_usage_idx;
	}

	FUNC0(p_hwfn,
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
	FUNC5(p_cid);
	return NULL;
}