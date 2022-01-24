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
struct TYPE_2__ {int /*<<< orphan*/  devcom; int /*<<< orphan*/  eswitch; } ;
struct mlx5_core_dev {TYPE_1__ priv; int /*<<< orphan*/  vxlan; int /*<<< orphan*/  geneve; int /*<<< orphan*/  tracer; int /*<<< orphan*/  hv_vhca; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC11 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC16 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC17 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC19(struct mlx5_core_dev *dev)
{
	FUNC14(dev->hv_vhca);
	FUNC12(dev->tracer);
	FUNC7(dev);
	FUNC11(dev);
	FUNC9(dev->priv.eswitch);
	FUNC17(dev);
	FUNC16(dev);
	FUNC4(dev);
	FUNC13(dev->geneve);
	FUNC18(dev->vxlan);
	FUNC0(dev);
	FUNC3(dev);
	FUNC1(dev);
	FUNC2(dev);
	FUNC5(dev);
	FUNC10(dev);
	FUNC8(dev);
	FUNC15(dev);
	FUNC6(dev->priv.devcom);
}