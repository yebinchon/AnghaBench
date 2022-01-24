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
union bpf_attr {int /*<<< orphan*/  target_fd; int /*<<< orphan*/  attach_bpf_fd; scalar_t__ attach_flags; } ;
struct rc_dev {int /*<<< orphan*/  dev; } ;
struct bpf_prog {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_PROG_TYPE_LIRC_MODE2 ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct rc_dev*) ; 
 int FUNC1 (struct rc_dev*) ; 
 struct rc_dev* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rc_dev*) ; 
 int FUNC4 (struct rc_dev*,struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct rc_dev* FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(const union bpf_attr *attr)
{
	struct bpf_prog *prog;
	struct rc_dev *rcdev;
	int ret;

	if (attr->attach_flags)
		return -EINVAL;

	prog = FUNC2(attr->attach_bpf_fd,
				 BPF_PROG_TYPE_LIRC_MODE2);
	if (FUNC0(prog))
		return FUNC1(prog);

	rcdev = FUNC6(attr->target_fd);
	if (FUNC0(rcdev)) {
		FUNC3(prog);
		return FUNC1(rcdev);
	}

	ret = FUNC4(rcdev, prog);

	FUNC3(prog);
	FUNC5(&rcdev->dev);

	return ret;
}