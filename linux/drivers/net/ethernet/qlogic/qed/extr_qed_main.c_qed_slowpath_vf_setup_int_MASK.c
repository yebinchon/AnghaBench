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
typedef  scalar_t__ u8 ;
struct qed_int_params {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  num_vectors; } ;
struct TYPE_4__ {int min_msix_cnt; scalar_t__ num_vectors; int /*<<< orphan*/  int_mode; } ;
struct TYPE_6__ {TYPE_2__ out; int /*<<< orphan*/  fp_msix_cnt; scalar_t__ fp_msix_base; TYPE_1__ in; } ;
struct qed_dev {int num_hwfns; TYPE_3__ int_params; int /*<<< orphan*/ * hwfns; } ;

/* Variables and functions */
 int /*<<< orphan*/  QED_INT_MODE_MSIX ; 
 int /*<<< orphan*/ * FUNC0 (struct qed_dev*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct qed_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 

__attribute__((used)) static int FUNC4(struct qed_dev *cdev)
{
	int rc;

	FUNC1(&cdev->int_params, 0, sizeof(struct qed_int_params));
	cdev->int_params.in.int_mode = QED_INT_MODE_MSIX;

	FUNC3(FUNC0(cdev),
			    &cdev->int_params.in.num_vectors);
	if (cdev->num_hwfns > 1) {
		u8 vectors = 0;

		FUNC3(&cdev->hwfns[1], &vectors);
		cdev->int_params.in.num_vectors += vectors;
	}

	/* We want a minimum of one fastpath vector per vf hwfn */
	cdev->int_params.in.min_msix_cnt = cdev->num_hwfns;

	rc = FUNC2(cdev, true);
	if (rc)
		return rc;

	cdev->int_params.fp_msix_base = 0;
	cdev->int_params.fp_msix_cnt = cdev->int_params.out.num_vectors;

	return 0;
}