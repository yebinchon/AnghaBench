#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_5__ {int /*<<< orphan*/  echo; int /*<<< orphan*/  protocol_id; int /*<<< orphan*/  cmd_id; } ;
struct TYPE_6__ {TYPE_2__ hdr; } ;
struct qed_spq_entry {scalar_t__ comp_mode; TYPE_3__ elem; int /*<<< orphan*/  list; struct qed_spq_entry* post_ent; int /*<<< orphan*/ * queue; int /*<<< orphan*/  priority; } ;
struct qed_spq {int /*<<< orphan*/  lock; int /*<<< orphan*/  unlimited_pending; } ;
struct qed_hwfn {TYPE_1__* cdev; struct qed_spq* p_spq; } ;
struct TYPE_4__ {scalar_t__ recov_in_prog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  QED_MSG_SPQ ; 
 scalar_t__ QED_SPQ_MODE_EBLOCK ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*,struct qed_spq_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_spq_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct qed_hwfn*,struct qed_spq_entry*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct qed_hwfn*,struct qed_spq_entry*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct qed_hwfn*,struct qed_spq_entry*) ; 
 int FUNC9 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_spq_entry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct qed_hwfn*,struct qed_spq_entry*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct qed_hwfn *p_hwfn,
		 struct qed_spq_entry *p_ent, u8 *fw_return_code)
{
	int rc = 0;
	struct qed_spq *p_spq = p_hwfn ? p_hwfn->p_spq : NULL;
	bool b_ret_ent = true;
	bool eblock;

	if (!p_hwfn)
		return -EINVAL;

	if (!p_ent) {
		FUNC0(p_hwfn, "Got a NULL pointer\n");
		return -EINVAL;
	}

	if (p_hwfn->cdev->recov_in_prog) {
		FUNC1(p_hwfn,
			   QED_MSG_SPQ,
			   "Recovery is in progress. Skip spq post [cmd %02x protocol %02x]\n",
			   p_ent->elem.hdr.cmd_id, p_ent->elem.hdr.protocol_id);

		/* Let the flow complete w/o any error handling */
		FUNC10(p_ent, fw_return_code);
		return 0;
	}

	/* Complete the entry */
	rc = FUNC8(p_hwfn, p_ent);

	FUNC12(&p_spq->lock);

	/* Check return value after LOCK is taken for cleaner error flow */
	if (rc)
		goto spq_post_fail;

	/* Check if entry is in block mode before qed_spq_add_entry,
	 * which might kfree p_ent.
	 */
	eblock = (p_ent->comp_mode == QED_SPQ_MODE_EBLOCK);

	/* Add the request to the pending queue */
	rc = FUNC5(p_hwfn, p_ent, p_ent->priority);
	if (rc)
		goto spq_post_fail;

	rc = FUNC9(p_hwfn);
	if (rc) {
		/* Since it's possible that pending failed for a different
		 * entry [although unlikely], the failed entry was already
		 * dealt with; No need to return it here.
		 */
		b_ret_ent = false;
		goto spq_post_fail;
	}

	FUNC13(&p_spq->lock);

	if (eblock) {
		/* For entries in QED BLOCK mode, the completion code cannot
		 * perform the necessary cleanup - if it did, we couldn't
		 * access p_ent here to see whether it's successful or not.
		 * Thus, after gaining the answer perform the cleanup here.
		 */
		rc = FUNC6(p_hwfn, p_ent, fw_return_code,
				   p_ent->queue == &p_spq->unlimited_pending);

		if (p_ent->queue == &p_spq->unlimited_pending) {
			struct qed_spq_entry *p_post_ent = p_ent->post_ent;

			FUNC3(p_ent);

			/* Return the entry which was actually posted */
			p_ent = p_post_ent;
		}

		if (rc)
			goto spq_post_fail2;

		/* return to pool */
		FUNC11(p_hwfn, p_ent);
	}
	return rc;

spq_post_fail2:
	FUNC12(&p_spq->lock);
	FUNC4(&p_ent->list);
	FUNC7(p_hwfn, p_ent->elem.hdr.echo);

spq_post_fail:
	/* return to the free pool */
	if (b_ret_ent)
		FUNC2(p_hwfn, p_ent);
	FUNC13(&p_spq->lock);

	return rc;
}