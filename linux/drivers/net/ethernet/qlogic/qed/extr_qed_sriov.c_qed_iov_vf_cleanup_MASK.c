#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct qed_vf_queue {TYPE_1__* cids; } ;
struct qed_vf_info {int /*<<< orphan*/  relative_vf_id; int /*<<< orphan*/  acquire; int /*<<< orphan*/  shadow_config; struct qed_vf_queue* vf_queues; scalar_t__ num_active_rxqs; int /*<<< orphan*/  num_sbs; int /*<<< orphan*/  num_txqs; int /*<<< orphan*/  num_rxqs; scalar_t__ configured_features; scalar_t__ vport_instance; scalar_t__ vf_bulletin; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * p_cid; } ;

/* Variables and functions */
 size_t MAX_QUEUES_PER_QZONE ; 
 size_t QED_MAX_VF_CHAINS_PER_PF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct qed_hwfn *p_hwfn,
			       struct qed_vf_info *p_vf)
{
	u32 i, j;

	p_vf->vf_bulletin = 0;
	p_vf->vport_instance = 0;
	p_vf->configured_features = 0;

	/* If VF previously requested less resources, go back to default */
	p_vf->num_rxqs = p_vf->num_sbs;
	p_vf->num_txqs = p_vf->num_sbs;

	p_vf->num_active_rxqs = 0;

	for (i = 0; i < QED_MAX_VF_CHAINS_PER_PF; i++) {
		struct qed_vf_queue *p_queue = &p_vf->vf_queues[i];

		for (j = 0; j < MAX_QUEUES_PER_QZONE; j++) {
			if (!p_queue->cids[j].p_cid)
				continue;

			FUNC1(p_hwfn,
						  p_queue->cids[j].p_cid);
			p_queue->cids[j].p_cid = NULL;
		}
	}

	FUNC0(&p_vf->shadow_config, 0, sizeof(p_vf->shadow_config));
	FUNC0(&p_vf->acquire, 0, sizeof(p_vf->acquire));
	FUNC2(p_hwfn, p_vf->relative_vf_id);
}