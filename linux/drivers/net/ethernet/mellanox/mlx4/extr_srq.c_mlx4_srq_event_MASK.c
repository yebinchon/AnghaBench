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
struct mlx4_srq_table {int /*<<< orphan*/  tree; } ;
struct mlx4_srq {int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* event ) (struct mlx4_srq*,int) ;} ;
struct TYPE_3__ {int num_srqs; } ;
struct mlx4_dev {TYPE_1__ caps; } ;
struct TYPE_4__ {struct mlx4_srq_table srq_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx4_dev*,char*,int) ; 
 struct mlx4_srq* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx4_srq*,int) ; 

void FUNC9(struct mlx4_dev *dev, u32 srqn, int event_type)
{
	struct mlx4_srq_table *srq_table = &FUNC1(dev)->srq_table;
	struct mlx4_srq *srq;

	FUNC4();
	srq = FUNC3(&srq_table->tree, srqn & (dev->caps.num_srqs - 1));
	FUNC5();
	if (srq)
		FUNC7(&srq->refcount);
	else {
		FUNC2(dev, "Async event for bogus SRQ %08x\n", srqn);
		return;
	}

	srq->event(srq, event_type);

	if (FUNC6(&srq->refcount))
		FUNC0(&srq->free);
}