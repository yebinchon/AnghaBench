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
struct rc_dev {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_rc_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct rc_dev**) ; 
 struct rc_dev** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_dev**) ; 
 int FUNC3 (struct rc_dev*) ; 

int FUNC4(struct device *parent, struct rc_dev *dev)
{
	struct rc_dev **dr;
	int ret;

	dr = FUNC1(devm_rc_release, sizeof(*dr), GFP_KERNEL);
	if (!dr)
		return -ENOMEM;

	ret = FUNC3(dev);
	if (ret) {
		FUNC2(dr);
		return ret;
	}

	*dr = dev;
	FUNC0(parent, dr);

	return 0;
}