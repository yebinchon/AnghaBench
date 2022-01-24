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
struct v4l2_subdev_ir_parameters {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct cx25840_ir_state {int /*<<< orphan*/  tx_params_lock; int /*<<< orphan*/  tx_params; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct v4l2_subdev_ir_parameters*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct cx25840_ir_state* FUNC3 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC4(struct v4l2_subdev *sd,
				      struct v4l2_subdev_ir_parameters *p)
{
	struct cx25840_ir_state *ir_state = FUNC3(sd);

	if (ir_state == NULL)
		return -ENODEV;

	FUNC1(&ir_state->tx_params_lock);
	FUNC0(p, &ir_state->tx_params,
				      sizeof(struct v4l2_subdev_ir_parameters));
	FUNC2(&ir_state->tx_params_lock);
	return 0;
}