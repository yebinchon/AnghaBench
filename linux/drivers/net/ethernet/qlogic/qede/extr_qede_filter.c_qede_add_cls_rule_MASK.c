#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct qede_dev {TYPE_1__* arfs; } ;
struct qede_arfs_tuple {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* build_hdr ) (TYPE_2__*,void*) ;} ;
struct qede_arfs_fltr_node {int buf_len; int /*<<< orphan*/  rxq_id; void* data; TYPE_2__ tuple; int /*<<< orphan*/  sw_id; } ;
struct ethtool_rx_flow_spec {int /*<<< orphan*/  location; } ;
struct ethtool_rxnfc {struct ethtool_rx_flow_spec fs; } ;
struct TYPE_4__ {int /*<<< orphan*/  arfs_fltr_bmap; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_arfs_fltr_node*) ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct qede_arfs_tuple*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qede_dev*,struct qede_arfs_fltr_node*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct qede_dev*,struct qede_arfs_fltr_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct qede_dev*,struct qede_arfs_tuple*) ; 
 int FUNC8 (struct qede_arfs_tuple*) ; 
 int /*<<< orphan*/  FUNC9 (struct qede_dev*,struct qede_arfs_fltr_node*,struct ethtool_rx_flow_spec*) ; 
 int FUNC10 (struct qede_dev*,struct qede_arfs_tuple*,struct ethtool_rx_flow_spec*) ; 
 int FUNC11 (struct qede_dev*,struct qede_arfs_fltr_node*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,void*) ; 

int FUNC14(struct qede_dev *edev, struct ethtool_rxnfc *info)
{
	struct ethtool_rx_flow_spec *fsp = &info->fs;
	struct qede_arfs_fltr_node *n;
	struct qede_arfs_tuple t;
	int min_hlen, rc;

	FUNC0(edev);

	if (!edev->arfs) {
		rc = -EPERM;
		goto unlock;
	}

	/* Translate the flow specification into something fittign our DB */
	rc = FUNC10(edev, &t, fsp);
	if (rc)
		goto unlock;

	if (FUNC7(edev, &t)) {
		rc = -EINVAL;
		goto unlock;
	}

	n = FUNC3(sizeof(*n), GFP_KERNEL);
	if (!n) {
		rc = -ENOMEM;
		goto unlock;
	}

	min_hlen = FUNC8(&t);
	n->data = FUNC3(min_hlen, GFP_KERNEL);
	if (!n->data) {
		FUNC2(n);
		rc = -ENOMEM;
		goto unlock;
	}

	n->sw_id = fsp->location;
	FUNC12(n->sw_id, edev->arfs->arfs_fltr_bmap);
	n->buf_len = min_hlen;

	FUNC4(&n->tuple, &t, sizeof(n->tuple));

	FUNC9(edev, n, fsp);

	/* Build a minimal header according to the flow */
	n->tuple.build_hdr(&n->tuple, n->data);

	rc = FUNC6(edev, n, 0);
	if (rc)
		goto unlock;

	FUNC5(edev, n, n->rxq_id, true);
	rc = FUNC11(edev, n);
unlock:
	FUNC1(edev);

	return rc;
}