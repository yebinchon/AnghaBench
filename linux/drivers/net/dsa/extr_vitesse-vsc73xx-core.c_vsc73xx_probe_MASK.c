#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vsc73xx {TYPE_1__* ds; int /*<<< orphan*/ * addr; struct device* dev; scalar_t__ reset; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ops; struct vsc73xx* priv; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GPIOD_OUT_LOW ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int,int) ; 
 int FUNC12 (struct vsc73xx*) ; 
 int /*<<< orphan*/  vsc73xx_ds_ops ; 
 int FUNC13 (struct vsc73xx*) ; 

int FUNC14(struct vsc73xx *vsc)
{
	struct device *dev = vsc->dev;
	int ret;

	/* Release reset, if any */
	vsc->reset = FUNC4(dev, "reset", GPIOD_OUT_LOW);
	if (FUNC0(vsc->reset)) {
		FUNC2(dev, "failed to get RESET GPIO\n");
		return FUNC1(vsc->reset);
	}
	if (vsc->reset)
		/* Wait 20ms according to datasheet table 245 */
		FUNC10(20);

	ret = FUNC12(vsc);
	if (ret == -EAGAIN) {
		FUNC2(vsc->dev,
			"Chip seems to be out of control. Assert reset and try again.\n");
		FUNC9(vsc->reset, 1);
		/* Reset pulse should be 20ns minimum, according to datasheet
		 * table 245, so 10us should be fine
		 */
		FUNC11(10, 100);
		FUNC9(vsc->reset, 0);
		/* Wait 20ms according to datasheet table 245 */
		FUNC10(20);
		ret = FUNC12(vsc);
	}
	if (ret) {
		FUNC2(dev, "no chip found (%d)\n", ret);
		return -ENODEV;
	}

	FUNC8(vsc->addr);
	FUNC3(vsc->dev,
		 "MAC for control frames: %02X:%02X:%02X:%02X:%02X:%02X\n",
		 vsc->addr[0], vsc->addr[1], vsc->addr[2],
		 vsc->addr[3], vsc->addr[4], vsc->addr[5]);

	/* The VSC7395 switch chips have 5+1 ports which means 5
	 * ordinary ports and a sixth CPU port facing the processor
	 * with an RGMII interface. These ports are numbered 0..4
	 * and 6, so they leave a "hole" in the port map for port 5,
	 * which is invalid.
	 *
	 * The VSC7398 has 8 ports, port 7 is again the CPU port.
	 *
	 * We allocate 8 ports and avoid access to the nonexistant
	 * ports.
	 */
	vsc->ds = FUNC6(dev, 8);
	if (!vsc->ds)
		return -ENOMEM;
	vsc->ds->priv = vsc;

	vsc->ds->ops = &vsc73xx_ds_ops;
	ret = FUNC5(vsc->ds);
	if (ret) {
		FUNC2(dev, "unable to register switch (%d)\n", ret);
		return ret;
	}

	ret = FUNC13(vsc);
	if (ret) {
		FUNC7(vsc->ds);
		return ret;
	}

	return 0;
}