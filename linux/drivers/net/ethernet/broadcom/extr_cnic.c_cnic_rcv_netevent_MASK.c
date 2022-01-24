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
typedef  int /*<<< orphan*/  u16 ;
struct cnic_ulp_ops {int /*<<< orphan*/  (* indicate_netevent ) (void*,unsigned long,int /*<<< orphan*/ ) ;} ;
struct cnic_local {int /*<<< orphan*/ * ulp_flags; void** ulp_handle; int /*<<< orphan*/ * ulp_ops; } ;

/* Variables and functions */
 int MAX_CNIC_ULP_TYPE ; 
 int /*<<< orphan*/  ULP_F_CALL_PENDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cnic_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct cnic_ulp_ops* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct cnic_local *cp, unsigned long event,
			      u16 vlan_id)
{
	int if_type;

	for (if_type = 0; if_type < MAX_CNIC_ULP_TYPE; if_type++) {
		struct cnic_ulp_ops *ulp_ops;
		void *ctx;

		FUNC2(&cnic_lock);
		ulp_ops = FUNC4(cp->ulp_ops[if_type],
						FUNC1(&cnic_lock));
		if (!ulp_ops || !ulp_ops->indicate_netevent) {
			FUNC3(&cnic_lock);
			continue;
		}

		ctx = cp->ulp_handle[if_type];

		FUNC5(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
		FUNC3(&cnic_lock);

		ulp_ops->indicate_netevent(ctx, event, vlan_id);

		FUNC0(ULP_F_CALL_PENDING, &cp->ulp_flags[if_type]);
	}
}