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
union bpf_attr {int /*<<< orphan*/  target_fd; scalar_t__ attach_flags; } ;
struct rc_dev {int /*<<< orphan*/  dev; } ;
struct bpf_prog {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct rc_dev*) ; 
 int FUNC1 (struct rc_dev*) ; 
 int FUNC2 (struct rc_dev*,struct bpf_prog*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rc_dev* FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(const union bpf_attr *attr, struct bpf_prog *prog)
{
	struct rc_dev *rcdev;
	int ret;

	if (attr->attach_flags)
		return -EINVAL;

	rcdev = FUNC4(attr->target_fd);
	if (FUNC0(rcdev))
		return FUNC1(rcdev);

	ret = FUNC2(rcdev, prog);

	FUNC3(&rcdev->dev);

	return ret;
}