#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct cnic_ulp_ops {int /*<<< orphan*/  (* cnic_start ) (int /*<<< orphan*/ ) ;} ;
struct cnic_local {int /*<<< orphan*/ * ulp_flags; int /*<<< orphan*/ * ulp_handle; int /*<<< orphan*/ * ulp_ops; } ;
struct cnic_dev {struct cnic_local* cnic_priv; } ;

/* Variables and functions */
 int MAX_CNIC_ULP_TYPE ; 
 int /*<<< orphan*/  ULP_F_CALL_PENDING ; 
 int /*<<< orphan*/  ULP_F_START ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cnic_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cnic_ulp_ops* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct cnic_dev *dev)
{
	struct cnic_local *cp = dev->cnic_priv;
	int if_type;

	for (if_type = 0; if_type < MAX_CNIC_ULP_TYPE; if_type++) {
		struct cnic_ulp_ops *ulp_ops;

		FUNC2(&cnic_lock);
		ulp_ops = FUNC4(cp->ulp_ops[if_type],
						    FUNC1(&cnic_lock));
		if (!ulp_ops || !ulp_ops->cnic_start) {
			FUNC3(&cnic_lock);
			continue;
		}
		FUNC5(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
		FUNC3(&cnic_lock);

		if (!FUNC7(ULP_F_START, &cp->ulp_flags[if_type]))
			ulp_ops->cnic_start(cp->ulp_handle[if_type]);

		FUNC0(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
	}
}