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
typedef  int u32 ;
struct qed_ptt {int dummy; } ;
struct qed_hwfn {int dummy; } ;
struct TYPE_2__ {size_t engine_for_debug; struct qed_dbg_feature* features; } ;
struct qed_dev {TYPE_1__ dbg_params; struct qed_hwfn* hwfns; } ;
struct qed_dbg_feature {int dumped_dwords; int /*<<< orphan*/  buf_size; int /*<<< orphan*/  dump_buf; } ;
typedef  enum qed_dbg_features { ____Placeholder_qed_dbg_features } qed_dbg_features ;
typedef  enum dbg_status { ____Placeholder_dbg_status } dbg_status ;

/* Variables and functions */
 int DBG_STATUS_OK ; 
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,int /*<<< orphan*/ ,char*,...) ; 
 int EINVAL ; 
 int /*<<< orphan*/  QED_MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct qed_hwfn*,struct qed_ptt*,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct qed_ptt* FUNC4 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC5 (struct qed_hwfn*,struct qed_ptt*) ; 

int FUNC6(struct qed_dev *cdev, void *buffer,
		    enum qed_dbg_features feature, u32 *num_dumped_bytes)
{
	struct qed_hwfn *p_hwfn =
		&cdev->hwfns[cdev->dbg_params.engine_for_debug];
	struct qed_dbg_feature *qed_feature =
		&cdev->dbg_params.features[feature];
	enum dbg_status dbg_rc;
	struct qed_ptt *p_ptt;
	int rc = 0;

	/* Acquire ptt */
	p_ptt = FUNC4(p_hwfn);
	if (!p_ptt)
		return -EINVAL;

	/* Get dump */
	dbg_rc = FUNC2(p_hwfn, p_ptt, feature);
	if (dbg_rc != DBG_STATUS_OK) {
		FUNC0(cdev, QED_MSG_DEBUG, "%s\n",
			   FUNC3(dbg_rc));
		*num_dumped_bytes = 0;
		rc = -EINVAL;
		goto out;
	}

	FUNC0(cdev, QED_MSG_DEBUG,
		   "copying debugfs feature to external buffer\n");
	FUNC1(buffer, qed_feature->dump_buf, qed_feature->buf_size);
	*num_dumped_bytes = cdev->dbg_params.features[feature].dumped_dwords *
			    4;

out:
	FUNC5(p_hwfn, p_ptt);
	return rc;
}