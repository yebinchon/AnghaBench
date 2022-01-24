#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct v4l2_subdev {int dummy; } ;
struct device {int dummy; } ;
struct csiphy_device {int /*<<< orphan*/  clock; int /*<<< orphan*/  nclocks; int /*<<< orphan*/  irq; TYPE_2__* ops; TYPE_1__* camss; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* hw_version_read ) (struct csiphy_device*,struct device*) ;int /*<<< orphan*/  (* reset ) (struct csiphy_device*) ;} ;
struct TYPE_3__ {struct device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC2 (struct csiphy_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct csiphy_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct csiphy_device*,struct device*) ; 
 struct csiphy_device* FUNC9 (struct v4l2_subdev*) ; 

__attribute__((used)) static int FUNC10(struct v4l2_subdev *sd, int on)
{
	struct csiphy_device *csiphy = FUNC9(sd);
	struct device *dev = csiphy->camss->dev;

	if (on) {
		int ret;

		ret = FUNC5(dev);
		if (ret < 0)
			return ret;

		ret = FUNC2(csiphy);
		if (ret < 0) {
			FUNC6(dev);
			return ret;
		}

		ret = FUNC1(csiphy->nclocks, csiphy->clock, dev);
		if (ret < 0) {
			FUNC6(dev);
			return ret;
		}

		FUNC4(csiphy->irq);

		csiphy->ops->reset(csiphy);

		csiphy->ops->hw_version_read(csiphy, dev);
	} else {
		FUNC3(csiphy->irq);

		FUNC0(csiphy->nclocks, csiphy->clock);

		FUNC6(dev);
	}

	return 0;
}