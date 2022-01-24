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
struct mlx5_core_dev {int dummy; } ;
typedef  enum mlx5_vsc_state { ____Placeholder_mlx5_vsc_state } mlx5_vsc_state ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MLX5_SEMAPHORE_SW_RESET ; 
 int MLX5_VSC_LOCK ; 
 int MLX5_VSC_UNLOCK ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*) ; 
 int FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*) ; 
 int FUNC4 (struct mlx5_core_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct mlx5_core_dev *dev, bool lock)
{
	enum mlx5_vsc_state state;
	int ret;

	if (!FUNC0(dev))
		return -EBUSY;

	/* Try to lock GW access, this stage doesn't return
	 * EBUSY because locked GW does not mean that other PF
	 * already started the reset.
	 */
	ret = FUNC2(dev);
	if (ret == -EBUSY)
		return -EINVAL;
	if (ret)
		return ret;

	state = lock ? MLX5_VSC_LOCK : MLX5_VSC_UNLOCK;
	/* At this stage, if the return status == EBUSY, then we know
	 * for sure that another PF started the reset, so don't allow
	 * another reset.
	 */
	ret = FUNC4(dev, MLX5_SEMAPHORE_SW_RESET, state);
	if (ret)
		FUNC1(dev, "Failed to lock SW reset semaphore\n");

	/* Unlock GW access */
	FUNC3(dev);

	return ret;
}