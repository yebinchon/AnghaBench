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
typedef  int u32 ;
struct TYPE_3__ {int num_cqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct mlx4_cq_table {int /*<<< orphan*/  tree; } ;
struct mlx4_cq {int /*<<< orphan*/  (* event ) (struct mlx4_cq*,int) ;} ;
struct TYPE_4__ {struct mlx4_cq_table cq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx4_dev*,char*,int) ; 
 TYPE_2__* FUNC1 (struct mlx4_dev*) ; 
 struct mlx4_cq* FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_cq*,int) ; 

void FUNC6(struct mlx4_dev *dev, u32 cqn, int event_type)
{
	struct mlx4_cq_table *cq_table = &FUNC1(dev)->cq_table;
	struct mlx4_cq *cq;

	FUNC3();
	cq = FUNC2(&cq_table->tree, cqn & (dev->caps.num_cqs - 1));
	FUNC4();

	if (!cq) {
		FUNC0(dev, "Async event for bogus CQ %08x\n", cqn);
		return;
	}

	/* Acessing the CQ outside of rcu_read_lock is safe, because
	 * the CQ is freed only after interrupt handling is completed.
	 */
	cq->event(cq, event_type);
}