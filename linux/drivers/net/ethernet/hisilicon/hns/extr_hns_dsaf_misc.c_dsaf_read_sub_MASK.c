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
typedef  int /*<<< orphan*/  u32 ;
struct dsaf_device {int /*<<< orphan*/  sc_base; int /*<<< orphan*/  dev; scalar_t__ sub_ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static u32 FUNC3(struct dsaf_device *dsaf_dev, u32 reg)
{
	u32 ret = 0;
	int err;

	if (dsaf_dev->sub_ctrl) {
		err = FUNC2(dsaf_dev->sub_ctrl, reg, &ret);
		if (err)
			FUNC0(dsaf_dev->dev, "dsaf_read_syscon error %d!\n",
				err);
	} else {
		ret = FUNC1(dsaf_dev->sc_base, reg);
	}

	return ret;
}