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
struct mlx5_core_roce {int /*<<< orphan*/  ft; int /*<<< orphan*/  fg; int /*<<< orphan*/  allow_rule; } ;
struct TYPE_2__ {struct mlx5_core_roce roce; } ;
struct mlx5_core_dev {TYPE_1__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct mlx5_core_dev *dev)
{
	struct mlx5_core_roce *roce = &dev->priv.roce;

	FUNC0(roce->allow_rule);
	FUNC1(roce->fg);
	FUNC2(roce->ft);
}