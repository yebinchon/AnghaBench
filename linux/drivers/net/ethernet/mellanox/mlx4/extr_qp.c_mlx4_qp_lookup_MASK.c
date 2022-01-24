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
typedef  int /*<<< orphan*/  u32 ;
struct mlx4_qp_table {int /*<<< orphan*/  lock; } ;
struct mlx4_qp {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_2__ {struct mlx4_qp_table qp_table; } ;

/* Variables and functions */
 struct mlx4_qp* FUNC0 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct mlx4_qp *FUNC4(struct mlx4_dev *dev, u32 qpn)
{
	struct mlx4_qp_table *qp_table = &FUNC1(dev)->qp_table;
	struct mlx4_qp *qp;

	FUNC2(&qp_table->lock);

	qp = FUNC0(dev, qpn);

	FUNC3(&qp_table->lock);
	return qp;
}