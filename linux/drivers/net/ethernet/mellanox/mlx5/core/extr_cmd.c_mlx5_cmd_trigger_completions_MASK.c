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
typedef  unsigned long u64 ;
struct TYPE_2__ {unsigned long bitmask; int log_sz; int /*<<< orphan*/  alloc_lock; } ;
struct mlx5_core_dev {TYPE_1__ cmd; } ;

/* Variables and functions */
 unsigned long MLX5_TRIGGERED_CMD_COMP ; 
 int /*<<< orphan*/  FUNC0 (struct mlx5_core_dev*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct mlx5_core_dev*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct mlx5_core_dev *dev)
{
	unsigned long flags;
	u64 vector;

	/* wait for pending handlers to complete */
	FUNC2(dev);
	FUNC3(&dev->cmd.alloc_lock, flags);
	vector = ~dev->cmd.bitmask & ((1ul << (1 << dev->cmd.log_sz)) - 1);
	if (!vector)
		goto no_trig;

	vector |= MLX5_TRIGGERED_CMD_COMP;
	FUNC4(&dev->cmd.alloc_lock, flags);

	FUNC1(dev, "vector 0x%llx\n", vector);
	FUNC0(dev, vector, true);
	return;

no_trig:
	FUNC4(&dev->cmd.alloc_lock, flags);
}