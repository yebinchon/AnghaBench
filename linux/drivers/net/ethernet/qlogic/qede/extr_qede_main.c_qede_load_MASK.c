#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct qed_link_params {int link_up; } ;
struct TYPE_8__ {struct qed_link_params msix_cnt; } ;
struct TYPE_6__ {int num_hwfns; } ;
struct TYPE_7__ {scalar_t__ num_tc; TYPE_1__ common; } ;
struct qede_dev {scalar_t__ fp_num_rx; scalar_t__ fp_num_tx; scalar_t__ num_queues; int /*<<< orphan*/  cdev; TYPE_5__* ops; TYPE_3__ int_info; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; int /*<<< orphan*/  ndev; TYPE_2__ dev_info; } ;
struct qed_int_info {int dummy; } ;
typedef  int /*<<< orphan*/  link_params ;
typedef  enum qede_load_mode { ____Placeholder_qede_load_mode } qede_load_mode ;
struct TYPE_10__ {TYPE_4__* common; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* set_fp_int ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_link ) (int /*<<< orphan*/ ,struct qed_link_params*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*) ; 
 int /*<<< orphan*/  QEDE_FLAGS_LINK_REQUESTED ; 
 int QEDE_LOAD_RELOAD ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*) ; 
 int /*<<< orphan*/  QEDE_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC4 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_link_params*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct qede_dev*) ; 
 int FUNC10 (struct qede_dev*) ; 
 int FUNC11 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct qede_dev*) ; 
 int FUNC18 (struct qede_dev*) ; 
 int FUNC19 (struct qede_dev*) ; 
 int FUNC20 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC22 (struct qede_dev*,int) ; 
 int /*<<< orphan*/  FUNC23 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,struct qed_link_params*) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC27(struct qede_dev *edev, enum qede_load_mode mode,
		     bool is_locked)
{
	struct qed_link_params link_params;
	u8 num_tc;
	int rc;

	FUNC0(edev, "Starting qede load\n");

	if (!is_locked)
		FUNC5(edev);

	rc = FUNC18(edev);
	if (rc)
		goto out;

	rc = FUNC10(edev);
	if (rc)
		goto out;

	FUNC15(edev);

	rc = FUNC11(edev);
	if (rc)
		goto err1;
	FUNC0(edev, "Allocated %d Rx, %d Tx queues\n",
		FUNC3(edev), FUNC4(edev));

	rc = FUNC19(edev);
	if (rc)
		goto err2;

	if (!FUNC2(edev) && edev->dev_info.common.num_hwfns == 1) {
		rc = FUNC9(edev);
		if (rc)
			FUNC1(edev, "aRFS memory allocation failed\n");
	}

	FUNC16(edev);
	FUNC0(edev, "Napi added and enabled\n");

	rc = FUNC20(edev);
	if (rc)
		goto err3;
	FUNC0(edev, "Setup IRQs succeeded\n");

	rc = FUNC22(edev, mode != QEDE_LOAD_RELOAD);
	if (rc)
		goto err4;
	FUNC0(edev, "Start VPORT, RXQ and TXQ succeeded\n");

	num_tc = FUNC8(edev->ndev);
	num_tc = num_tc ? num_tc : edev->dev_info.num_tc;
	FUNC21(edev->ndev, num_tc);

	/* Program un-configured VLANs */
	FUNC12(edev);

	FUNC24(QEDE_FLAGS_LINK_REQUESTED, &edev->flags);

	/* Ask for link-up using current configuration */
	FUNC7(&link_params, 0, sizeof(link_params));
	link_params.link_up = true;
	edev->ops->common->set_link(edev->cdev, &link_params);

	edev->state = QEDE_STATE_OPEN;

	FUNC0(edev, "Ending successfully qede load\n");

	goto out;
err4:
	FUNC23(edev);
	FUNC7(&edev->int_info.msix_cnt, 0, sizeof(struct qed_int_info));
err3:
	FUNC17(edev);
err2:
	FUNC14(edev);
err1:
	edev->ops->common->set_fp_int(edev->cdev, 0);
	FUNC13(edev);
	edev->num_queues = 0;
	edev->fp_num_tx = 0;
	edev->fp_num_rx = 0;
out:
	if (!is_locked)
		FUNC6(edev);

	return rc;
}