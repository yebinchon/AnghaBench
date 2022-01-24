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
struct mei_device {scalar_t__ dev_state; int /*<<< orphan*/  dev; } ;
struct mei_cl {struct mei_device* dev; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 int ENODEV ; 
 scalar_t__ MEI_DEV_POWER_DOWN ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC2 (struct mei_device*,struct mei_cl*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct mei_device*,struct mei_cl*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mei_cl*) ; 
 scalar_t__ FUNC5 (struct mei_cl*) ; 
 int /*<<< orphan*/  FUNC6 (struct mei_cl*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int FUNC11(struct mei_cl *cl)
{
	struct mei_device *dev;
	int rets;

	if (FUNC0(!cl || !cl->dev))
		return -ENODEV;

	dev = cl->dev;

	FUNC2(dev, cl, "disconnecting");

	if (!FUNC4(cl))
		return 0;

	if (FUNC5(cl)) {
		FUNC6(cl);
		return 0;
	}

	if (dev->dev_state == MEI_DEV_POWER_DOWN) {
		FUNC2(dev, cl, "Device is powering down, don't bother with disconnection\n");
		FUNC6(cl);
		return 0;
	}

	rets = FUNC7(dev->dev);
	if (rets < 0 && rets != -EINPROGRESS) {
		FUNC10(dev->dev);
		FUNC3(dev, cl, "rpm: get failed %d\n", rets);
		return rets;
	}

	rets = FUNC1(cl);

	FUNC2(dev, cl, "rpm: autosuspend\n");
	FUNC8(dev->dev);
	FUNC9(dev->dev);

	return rets;
}