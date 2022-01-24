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
struct TYPE_4__ {struct mlx4_eq* eq; } ;
struct mlx4_priv {TYPE_2__ eq_table; } ;
struct mlx4_eq {int /*<<< orphan*/  affinity_mask; } ;
struct TYPE_3__ {int num_comp_vectors; } ;
struct mlx4_dev {TYPE_1__ caps; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MLX4_EQ_ASYNC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct mlx4_dev*,int) ; 
 struct mlx4_priv* FUNC2 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct mlx4_dev *dev, int port, int eqn)
{
	int requested_cpu = 0;
	struct mlx4_priv *priv = FUNC2(dev);
	struct mlx4_eq *eq;
	int off = 0;
	int i;

	if (eqn > dev->caps.num_comp_vectors)
		return -EINVAL;

	for (i = 1; i < port; i++)
		off += FUNC1(dev, i);

	requested_cpu = eqn - off - !!(eqn > MLX4_EQ_ASYNC);

	/* Meaning EQs are shared, and this call comes from the second port */
	if (requested_cpu < 0)
		return 0;

	eq = &priv->eq_table.eq[eqn];

	if (!FUNC3(&eq->affinity_mask, GFP_KERNEL))
		return -ENOMEM;

	FUNC0(requested_cpu, eq->affinity_mask);

	return 0;
}