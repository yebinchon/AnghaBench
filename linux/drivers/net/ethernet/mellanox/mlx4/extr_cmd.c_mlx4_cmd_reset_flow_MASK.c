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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct mlx4_dev {int /*<<< orphan*/  persist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ mlx4_internal_err_reset ; 
 int FUNC1 (struct mlx4_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct mlx4_dev *dev, u16 op, u8 op_modifier,
			       int err)
{
	/* Only if reset flow is really active return code is based on
	  * command, otherwise current error code is returned.
	  */
	if (mlx4_internal_err_reset) {
		FUNC0(dev->persist);
		err = FUNC1(dev, op, op_modifier);
	}

	return err;
}