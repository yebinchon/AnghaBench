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
struct qed_hwfn {TYPE_2__* p_ooo_info; } ;
struct ooo_opaque {int dummy; } ;
struct TYPE_3__ {int num_of_cqes; scalar_t__ head_idx; int /*<<< orphan*/  p_cqes; } ;
struct TYPE_4__ {TYPE_1__ ooo_history; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,TYPE_2__*) ; 

void FUNC2(struct qed_hwfn *p_hwfn)
{
	FUNC1(p_hwfn, p_hwfn->p_ooo_info);
	FUNC0(p_hwfn->p_ooo_info->ooo_history.p_cqes, 0,
	       p_hwfn->p_ooo_info->ooo_history.num_of_cqes *
	       sizeof(struct ooo_opaque));
	p_hwfn->p_ooo_info->ooo_history.head_idx = 0;
}