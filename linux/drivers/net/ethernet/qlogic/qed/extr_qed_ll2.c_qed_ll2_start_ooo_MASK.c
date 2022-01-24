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
typedef  int /*<<< orphan*/  u8 ;
struct qed_ll2_params {int dummy; } ;
struct qed_ll2_acquire_data {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  ll2_ooo_queue_id; } ;
struct TYPE_4__ {TYPE_1__ iscsi_pf_params; } ;
struct qed_hwfn {TYPE_2__ pf_params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*) ; 
 int /*<<< orphan*/  QED_LL2_TYPE_OOO ; 
 int /*<<< orphan*/  QED_LL2_UNUSED_HANDLE ; 
 int FUNC1 (struct qed_hwfn*,struct qed_ll2_acquire_data*) ; 
 int FUNC2 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct qed_hwfn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct qed_hwfn*,struct qed_ll2_acquire_data*,struct qed_ll2_params*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct qed_hwfn *p_hwfn,
			     struct qed_ll2_params *params)
{
	u8 *handle = &p_hwfn->pf_params.iscsi_pf_params.ll2_ooo_queue_id;
	struct qed_ll2_acquire_data data;
	int rc;

	FUNC4(p_hwfn, &data, params,
			      QED_LL2_TYPE_OOO, handle, true);

	rc = FUNC1(p_hwfn, &data);
	if (rc) {
		FUNC0(p_hwfn, "Failed to acquire LL2 OOO connection\n");
		goto out;
	}

	rc = FUNC2(p_hwfn, *handle);
	if (rc) {
		FUNC0(p_hwfn, "Failed to establish LL2 OOO connection\n");
		goto fail;
	}

	return 0;

fail:
	FUNC3(p_hwfn, *handle);
out:
	*handle = QED_LL2_UNUSED_HANDLE;
	return rc;
}