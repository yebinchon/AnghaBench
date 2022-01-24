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
struct qed_ptt {int dummy; } ;
struct qed_link_output {int dummy; } ;
struct qed_hwfn {TYPE_2__* cdev; } ;
struct qed_common_cb_ops {int /*<<< orphan*/  (* link_update ) (void*,struct qed_link_output*) ;} ;
struct TYPE_3__ {struct qed_common_cb_ops* common; } ;
struct TYPE_4__ {TYPE_1__ protocol_ops; void* ops_cookie; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,struct qed_ptt*,struct qed_link_output*) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_hwfn*) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct qed_link_output*) ; 

void FUNC4(struct qed_hwfn *hwfn, struct qed_ptt *ptt)
{
	void *cookie = hwfn->cdev->ops_cookie;
	struct qed_common_cb_ops *op = hwfn->cdev->protocol_ops.common;
	struct qed_link_output if_link;

	FUNC1(hwfn, ptt, &if_link);
	FUNC2(hwfn);

	if (FUNC0(hwfn) && cookie)
		op->link_update(cookie, &if_link);
}