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
struct rc_dev {scalar_t__ driver_type; struct ir_raw_event_ctrl* raw; } ;
struct ir_raw_event_ctrl {int /*<<< orphan*/  progs; } ;
struct bpf_prog_array {int dummy; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ RC_DRIVER_IR_RAW ; 
 int FUNC0 (struct bpf_prog_array*,struct bpf_prog*,int /*<<< orphan*/ *,struct bpf_prog_array**) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_prog_array*) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_prog*) ; 
 int /*<<< orphan*/  ir_raw_handler_lock ; 
 struct bpf_prog_array* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct bpf_prog_array*) ; 

__attribute__((used)) static int FUNC7(struct rc_dev *rcdev, struct bpf_prog *prog)
{
	struct bpf_prog_array *old_array;
	struct bpf_prog_array *new_array;
	struct ir_raw_event_ctrl *raw;
	int ret;

	if (rcdev->driver_type != RC_DRIVER_IR_RAW)
		return -EINVAL;

	ret = FUNC4(&ir_raw_handler_lock);
	if (ret)
		return ret;

	raw = rcdev->raw;
	if (!raw) {
		ret = -ENODEV;
		goto unlock;
	}

	old_array = FUNC3(raw->progs);
	ret = FUNC0(old_array, prog, NULL, &new_array);
	/*
	 * Do not use bpf_prog_array_delete_safe() as we would end up
	 * with a dummy entry in the array, and the we would free the
	 * dummy in lirc_bpf_free()
	 */
	if (ret)
		goto unlock;

	FUNC6(raw->progs, new_array);
	FUNC1(old_array);
	FUNC2(prog);
unlock:
	FUNC5(&ir_raw_handler_lock);
	return ret;
}