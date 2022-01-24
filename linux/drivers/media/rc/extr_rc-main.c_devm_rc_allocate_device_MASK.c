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
struct TYPE_2__ {struct device* parent; } ;
struct rc_dev {int managed_alloc; TYPE_1__ dev; } ;
struct device {int dummy; } ;
typedef  enum rc_driver_type { ____Placeholder_rc_driver_type } rc_driver_type ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_rc_alloc_release ; 
 int /*<<< orphan*/  FUNC0 (struct device*,struct rc_dev**) ; 
 struct rc_dev** FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rc_dev**) ; 
 struct rc_dev* FUNC3 (int) ; 

struct rc_dev *FUNC4(struct device *dev,
				       enum rc_driver_type type)
{
	struct rc_dev **dr, *rc;

	dr = FUNC1(devm_rc_alloc_release, sizeof(*dr), GFP_KERNEL);
	if (!dr)
		return NULL;

	rc = FUNC3(type);
	if (!rc) {
		FUNC2(dr);
		return NULL;
	}

	rc->dev.parent = dev;
	rc->managed_alloc = true;
	*dr = rc;
	FUNC0(dev, dr);

	return rc;
}