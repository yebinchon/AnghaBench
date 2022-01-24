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
typedef  int u8 ;
struct mlx5_cmd_work_ent {int /*<<< orphan*/  ret; TYPE_1__* lay; } ;
struct TYPE_2__ {int /*<<< orphan*/  status_own; } ;

/* Variables and functions */
 int CMD_OWNER_HW ; 
 int /*<<< orphan*/  ETIMEDOUT ; 
 scalar_t__ MLX5_CMD_TIMEOUT_MSEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long jiffies ; 
 unsigned long FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct mlx5_cmd_work_ent *ent)
{
	unsigned long poll_end = jiffies + FUNC2(MLX5_CMD_TIMEOUT_MSEC + 1000);
	u8 own;

	do {
		own = FUNC0(ent->lay->status_own);
		if (!(own & CMD_OWNER_HW)) {
			ent->ret = 0;
			return;
		}
		FUNC1();
	} while (FUNC3(jiffies, poll_end));

	ent->ret = -ETIMEDOUT;
}