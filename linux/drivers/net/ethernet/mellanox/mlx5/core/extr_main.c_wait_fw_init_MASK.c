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
typedef  scalar_t__ u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FW_INIT_WAIT_MS ; 
 scalar_t__ FW_INIT_WARN_MESSAGE_INTERVAL ; 
 scalar_t__ FW_PRE_INIT_TIMEOUT_MILI ; 
 scalar_t__ FUNC1 (struct mlx5_core_dev*) ; 
 unsigned long jiffies ; 
 int FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct mlx5_core_dev*,char*,int) ; 
 unsigned long FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC7(struct mlx5_core_dev *dev, u32 max_wait_mili,
			u32 warn_time_mili)
{
	unsigned long warn = jiffies + FUNC4(warn_time_mili);
	unsigned long end = jiffies + FUNC4(max_wait_mili);
	int err = 0;

	FUNC0(FW_PRE_INIT_TIMEOUT_MILI < FW_INIT_WARN_MESSAGE_INTERVAL);

	while (FUNC1(dev)) {
		if (FUNC6(jiffies, end)) {
			err = -EBUSY;
			break;
		}
		if (warn_time_mili && FUNC6(jiffies, warn)) {
			FUNC3(dev, "Waiting for FW initialization, timeout abort in %ds\n",
				       FUNC2(end - warn) / 1000);
			warn = jiffies + FUNC4(warn_time_mili);
		}
		FUNC5(FW_INIT_WAIT_MS);
	}

	return err;
}