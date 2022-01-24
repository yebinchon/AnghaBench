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
typedef  scalar_t__ u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mlx5_core_dev {int dummy; } ;

/* Variables and functions */
 int ENODATA ; 
 scalar_t__ MCQS_UPDATE_STATE_ACTIVE_PENDING_RESET ; 
 scalar_t__ MCQS_UPDATE_STATE_IDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcqs_reg ; 
 int /*<<< orphan*/  FUNC2 (struct mlx5_core_dev*,char*,scalar_t__) ; 
 int FUNC3 (struct mlx5_core_dev*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC4(struct mlx5_core_dev *dev,
		      int component_index,
		      bool *pending_version_exists)
{
	u32 out[FUNC1(mcqs_reg)];
	u8 component_update_state;
	int err;

	err = FUNC3(dev, out, component_index);
	if (err)
		return err;

	component_update_state = FUNC0(mcqs_reg, out, component_update_state);

	if (component_update_state == MCQS_UPDATE_STATE_IDLE) {
		*pending_version_exists = false;
	} else if (component_update_state == MCQS_UPDATE_STATE_ACTIVE_PENDING_RESET) {
		*pending_version_exists = true;
	} else {
		FUNC2(dev,
			       "mcqs: can't read pending fw version while fw state is %d\n",
			       component_update_state);
		return -ENODATA;
	}
	return 0;
}