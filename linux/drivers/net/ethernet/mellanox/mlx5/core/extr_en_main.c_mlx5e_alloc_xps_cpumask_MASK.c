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
struct mlx5e_params {scalar_t__ num_channels; } ;
struct mlx5e_channel {int ix; int /*<<< orphan*/  xps_cpumask; int /*<<< orphan*/  mdev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct mlx5e_channel *c,
				   struct mlx5e_params *params)
{
	int num_comp_vectors = FUNC3(c->mdev);
	int irq;

	if (!FUNC4(&c->xps_cpumask, GFP_KERNEL))
		return -ENOMEM;

	for (irq = c->ix; irq < num_comp_vectors; irq += params->num_channels) {
		int cpu = FUNC0(FUNC2(c->mdev, irq));

		FUNC1(cpu, c->xps_cpumask);
	}

	return 0;
}