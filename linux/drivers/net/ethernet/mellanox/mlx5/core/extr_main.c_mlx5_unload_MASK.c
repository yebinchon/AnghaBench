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
struct TYPE_2__ {int /*<<< orphan*/  uar; } ;
struct mlx5_core_dev {TYPE_1__ priv; int /*<<< orphan*/  tracer; int /*<<< orphan*/  hv_vhca; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mlx5_core_dev*) ; 

__attribute__((used)) static void FUNC13(struct mlx5_core_dev *dev)
{
	FUNC3(dev);
	FUNC12(dev);
	FUNC2(dev);
	FUNC0(dev);
	FUNC1(dev);
	FUNC6(dev);
	FUNC8(dev->hv_vhca);
	FUNC7(dev->tracer);
	FUNC4(dev);
	FUNC9(dev);
	FUNC10(dev);
	FUNC5(dev);
	FUNC11(dev, dev->priv.uar);
}