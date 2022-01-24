#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qede_dev {TYPE_1__* arfs; } ;
struct qede_arfs_tuple {scalar_t__ mode; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* build_hdr ) (TYPE_2__*,void*) ;} ;
struct qede_arfs_fltr_node {int buf_len; int b_is_drop; int /*<<< orphan*/  rxq_id; void* data; TYPE_2__ tuple; int /*<<< orphan*/  sw_id; } ;
struct flow_cls_offload {int /*<<< orphan*/  cookie; TYPE_3__* rule; } ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_7__ {int /*<<< orphan*/  action; } ;
struct TYPE_5__ {scalar_t__ filter_count; scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ QEDE_RFS_MAX_FLTR ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct qede_arfs_fltr_node*) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct qede_arfs_tuple*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qede_dev*,struct qede_arfs_fltr_node*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct qede_dev*,struct qede_arfs_fltr_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct qede_dev*,struct qede_arfs_tuple*) ; 
 int FUNC9 (struct qede_arfs_tuple*) ; 
 scalar_t__ FUNC10 (struct qede_dev*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct qede_dev*,int /*<<< orphan*/ ,TYPE_3__*,struct qede_arfs_tuple*) ; 
 int FUNC12 (struct qede_dev*,struct qede_arfs_fltr_node*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,void*) ; 

int FUNC14(struct qede_dev *edev, __be16 proto,
			    struct flow_cls_offload *f)
{
	struct qede_arfs_fltr_node *n;
	int min_hlen, rc = -EINVAL;
	struct qede_arfs_tuple t;

	FUNC1(edev);

	if (!edev->arfs) {
		rc = -EPERM;
		goto unlock;
	}

	/* parse flower attribute and prepare filter */
	if (FUNC11(edev, proto, f->rule, &t))
		goto unlock;

	/* Validate profile mode and number of filters */
	if ((edev->arfs->filter_count && edev->arfs->mode != t.mode) ||
	    edev->arfs->filter_count == QEDE_RFS_MAX_FLTR) {
		FUNC0(edev,
			  "Filter configuration invalidated, filter mode=0x%x, configured mode=0x%x, filter count=0x%x\n",
			  t.mode, edev->arfs->mode, edev->arfs->filter_count);
		goto unlock;
	}

	/* parse tc actions and get the vf_id */
	if (FUNC10(edev, &f->rule->action))
		goto unlock;

	if (FUNC8(edev, &t)) {
		rc = -EEXIST;
		goto unlock;
	}

	n = FUNC4(sizeof(*n), GFP_KERNEL);
	if (!n) {
		rc = -ENOMEM;
		goto unlock;
	}

	min_hlen = FUNC9(&t);

	n->data = FUNC4(min_hlen, GFP_KERNEL);
	if (!n->data) {
		FUNC3(n);
		rc = -ENOMEM;
		goto unlock;
	}

	FUNC5(&n->tuple, &t, sizeof(n->tuple));

	n->buf_len = min_hlen;
	n->b_is_drop = true;
	n->sw_id = f->cookie;

	n->tuple.build_hdr(&n->tuple, n->data);

	rc = FUNC7(edev, n, 0);
	if (rc)
		goto unlock;

	FUNC6(edev, n, n->rxq_id, true);
	rc = FUNC12(edev, n);

unlock:
	FUNC2(edev);
	return rc;
}