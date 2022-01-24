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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_info {int /*<<< orphan*/  irq_done; int /*<<< orphan*/  irq_waitq; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int M5MOLS_I2C_RDY_WAIT_FL ; 
 int /*<<< orphan*/  SYSTEM_INT_FACTOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct v4l2_subdev*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct m5mols_info* FUNC3 (struct v4l2_subdev*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct v4l2_subdev *sd, u8 irq_mask, u32 timeout)
{
	struct m5mols_info *info = FUNC3(sd);

	int ret = FUNC4(info->irq_waitq,
				FUNC0(&info->irq_done, -1, 0),
				FUNC2(timeout));
	if (ret <= 0)
		return ret ? ret : -ETIMEDOUT;

	return FUNC1(sd, SYSTEM_INT_FACTOR, irq_mask,
				M5MOLS_I2C_RDY_WAIT_FL | irq_mask, -1);
}