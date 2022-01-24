#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int num_hwfns; } ;
struct TYPE_6__ {TYPE_1__ common; } ;
struct qede_dev {scalar_t__ ptp_skip_txts; int /*<<< orphan*/  cdev; TYPE_4__* ops; TYPE_2__ dev_info; int /*<<< orphan*/  ndev; int /*<<< orphan*/  state; int /*<<< orphan*/  flags; } ;
struct qed_link_params {int link_up; } ;
typedef  int /*<<< orphan*/  link_params ;
typedef  enum qede_unload_mode { ____Placeholder_qede_unload_mode } qede_unload_mode ;
struct TYPE_8__ {TYPE_3__* common; int /*<<< orphan*/  (* fastpath_stop ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* set_fp_int ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_link ) (int /*<<< orphan*/ ,struct qed_link_params*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct qede_dev*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct qede_dev*) ; 
 int /*<<< orphan*/  QEDE_FLAGS_LINK_REQUESTED ; 
 int /*<<< orphan*/  QEDE_STATE_CLOSED ; 
 int QEDE_UNLOAD_RECOVERY ; 
 int /*<<< orphan*/  FUNC3 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_link_params*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC12 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC13 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC14 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC15 (struct qede_dev*) ; 
 int FUNC16 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC18 (struct qede_dev*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct qed_link_params*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC22(struct qede_dev *edev, enum qede_unload_mode mode,
			bool is_locked)
{
	struct qed_link_params link_params;
	int rc;

	FUNC0(edev, "Starting qede unload\n");

	if (!is_locked)
		FUNC3(edev);

	FUNC5(QEDE_FLAGS_LINK_REQUESTED, &edev->flags);

	if (mode != QEDE_UNLOAD_RECOVERY)
		edev->state = QEDE_STATE_CLOSED;

	FUNC15(edev);

	/* Close OS Tx */
	FUNC8(edev->ndev);
	FUNC7(edev->ndev);

	if (mode != QEDE_UNLOAD_RECOVERY) {
		/* Reset the link */
		FUNC6(&link_params, 0, sizeof(link_params));
		link_params.link_up = false;
		edev->ops->common->set_link(edev->cdev, &link_params);

		rc = FUNC16(edev);
		if (rc) {
			FUNC17(edev);
			goto out;
		}

		FUNC0(edev, "Stopped Queues\n");
	}

	FUNC18(edev);
	edev->ops->fastpath_stop(edev->cdev);

	if (!FUNC2(edev) && edev->dev_info.common.num_hwfns == 1) {
		FUNC14(edev);
		FUNC10(edev);
	}

	/* Release the interrupts */
	FUNC17(edev);
	edev->ops->common->set_fp_int(edev->cdev, 0);

	FUNC13(edev);

	if (mode == QEDE_UNLOAD_RECOVERY)
		FUNC9(edev);

	FUNC12(edev);
	FUNC11(edev);

out:
	if (!is_locked)
		FUNC4(edev);

	if (mode != QEDE_UNLOAD_RECOVERY)
		FUNC1(edev, "Link is down\n");

	edev->ptp_skip_txts = 0;

	FUNC0(edev, "Ending qede unload\n");
}