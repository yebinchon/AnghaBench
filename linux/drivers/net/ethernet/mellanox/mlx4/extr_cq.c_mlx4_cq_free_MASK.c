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
struct TYPE_4__ {TYPE_1__* eq; } ;
struct mlx4_cq_table {int /*<<< orphan*/  lock; int /*<<< orphan*/  tree; } ;
struct mlx4_priv {TYPE_2__ eq_table; struct mlx4_cq_table cq_table; } ;
struct mlx4_dev {int dummy; } ;
struct mlx4_cq {int /*<<< orphan*/  cqn; int /*<<< orphan*/  free; int /*<<< orphan*/  refcount; int /*<<< orphan*/  vector; } ;
struct TYPE_3__ {scalar_t__ irq; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t MLX4_EQ_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct mlx4_dev*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx4_dev*,int /*<<< orphan*/ ) ; 
 struct mlx4_priv* FUNC4 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx4_dev*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct mlx4_dev *dev, struct mlx4_cq *cq)
{
	struct mlx4_priv *priv = FUNC4(dev);
	struct mlx4_cq_table *cq_table = &priv->cq_table;
	int err;

	err = FUNC2(dev, NULL, cq->cqn);
	if (err)
		FUNC5(dev, "HW2SW_CQ failed (%d) for CQN %06x\n", err, cq->cqn);

	FUNC8(&cq_table->lock);
	FUNC6(&cq_table->tree, cq->cqn);
	FUNC9(&cq_table->lock);

	FUNC10(priv->eq_table.eq[FUNC0(cq->vector)].irq);
	if (priv->eq_table.eq[FUNC0(cq->vector)].irq !=
	    priv->eq_table.eq[MLX4_EQ_ASYNC].irq)
		FUNC10(priv->eq_table.eq[MLX4_EQ_ASYNC].irq);

	if (FUNC7(&cq->refcount))
		FUNC1(&cq->free);
	FUNC11(&cq->free);

	FUNC3(dev, cq->cqn);
}