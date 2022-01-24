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
struct qed_ptt {int /*<<< orphan*/  list_entry; } ;
struct qed_hwfn {TYPE_1__* p_ptt_pool; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  free_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct qed_hwfn *p_hwfn, struct qed_ptt *p_ptt)
{
	FUNC1(&p_hwfn->p_ptt_pool->lock);
	FUNC0(&p_ptt->list_entry, &p_hwfn->p_ptt_pool->free_list);
	FUNC2(&p_hwfn->p_ptt_pool->lock);
}