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
struct st_rc_device {int rxuhfmode; int irq; scalar_t__ sys_clock; struct rc_dev* rdev; struct device* dev; scalar_t__ rstc; scalar_t__ base; scalar_t__ rx_base; } ;
struct resource {int dummy; } ;
struct rc_dev {int rx_resolution; char* device_name; int /*<<< orphan*/  map_name; int /*<<< orphan*/  driver_name; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct st_rc_device* priv; int /*<<< orphan*/  timeout; int /*<<< orphan*/  allowed_protocols; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 int /*<<< orphan*/  IR_ST_NAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  MAX_SYMB_TIME ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  RC_DRIVER_IR_RAW ; 
 int /*<<< orphan*/  RC_MAP_EMPTY ; 
 int /*<<< orphan*/  RC_PROTO_BIT_ALL_IR_DECODER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct device*,int) ; 
 scalar_t__ FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct device*,struct resource*) ; 
 struct st_rc_device* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct st_rc_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct device_node*,char*,char const**) ; 
 int FUNC13 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC14 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct platform_device*,struct st_rc_device*) ; 
 struct rc_dev* FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct rc_dev*) ; 
 int FUNC18 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC19 (struct rc_dev*) ; 
 scalar_t__ FUNC20 (struct device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  st_rc_close ; 
 int /*<<< orphan*/  FUNC21 (struct st_rc_device*) ; 
 int /*<<< orphan*/  st_rc_open ; 
 int /*<<< orphan*/  st_rc_rx_interrupt ; 
 int /*<<< orphan*/  FUNC22 (struct rc_dev*) ; 
 int /*<<< orphan*/  FUNC23 (char const*,char*) ; 

__attribute__((used)) static int FUNC24(struct platform_device *pdev)
{
	int ret = -EINVAL;
	struct rc_dev *rdev;
	struct device *dev = &pdev->dev;
	struct resource *res;
	struct st_rc_device *rc_dev;
	struct device_node *np = pdev->dev.of_node;
	const char *rx_mode;

	rc_dev = FUNC10(dev, sizeof(struct st_rc_device), GFP_KERNEL);

	if (!rc_dev)
		return -ENOMEM;

	rdev = FUNC16(RC_DRIVER_IR_RAW);

	if (!rdev)
		return -ENOMEM;

	if (np && !FUNC12(np, "rx-mode", &rx_mode)) {

		if (!FUNC23(rx_mode, "uhf")) {
			rc_dev->rxuhfmode = true;
		} else if (!FUNC23(rx_mode, "infrared")) {
			rc_dev->rxuhfmode = false;
		} else {
			FUNC4(dev, "Unsupported rx mode [%s]\n", rx_mode);
			goto err;
		}

	} else {
		goto err;
	}

	rc_dev->sys_clock = FUNC8(dev, NULL);
	if (FUNC0(rc_dev->sys_clock)) {
		FUNC4(dev, "System clock not found\n");
		ret = FUNC1(rc_dev->sys_clock);
		goto err;
	}

	rc_dev->irq = FUNC13(pdev, 0);
	if (rc_dev->irq < 0) {
		ret = rc_dev->irq;
		goto err;
	}

	res = FUNC14(pdev, IORESOURCE_MEM, 0);

	rc_dev->base = FUNC9(dev, res);
	if (FUNC0(rc_dev->base)) {
		ret = FUNC1(rc_dev->base);
		goto err;
	}

	if (rc_dev->rxuhfmode)
		rc_dev->rx_base = rc_dev->base + 0x40;
	else
		rc_dev->rx_base = rc_dev->base;

	rc_dev->rstc = FUNC20(dev, NULL);
	if (FUNC0(rc_dev->rstc)) {
		ret = FUNC1(rc_dev->rstc);
		goto err;
	}

	rc_dev->dev = dev;
	FUNC15(pdev, rc_dev);
	FUNC21(rc_dev);

	rdev->allowed_protocols = RC_PROTO_BIT_ALL_IR_DECODER;
	/* rx sampling rate is 10Mhz */
	rdev->rx_resolution = 100;
	rdev->timeout = FUNC2(MAX_SYMB_TIME);
	rdev->priv = rc_dev;
	rdev->open = st_rc_open;
	rdev->close = st_rc_close;
	rdev->driver_name = IR_ST_NAME;
	rdev->map_name = RC_MAP_EMPTY;
	rdev->device_name = "ST Remote Control Receiver";

	ret = FUNC18(rdev);
	if (ret < 0)
		goto clkerr;

	rc_dev->rdev = rdev;
	if (FUNC11(dev, rc_dev->irq, st_rc_rx_interrupt,
			     0, IR_ST_NAME, rc_dev) < 0) {
		FUNC4(dev, "IRQ %d register failed\n", rc_dev->irq);
		ret = -EINVAL;
		goto rcerr;
	}

	/* enable wake via this device */
	FUNC7(dev, true);
	FUNC6(dev, rc_dev->irq);

	/*
	 * for LIRC_MODE_MODE2 or LIRC_MODE_PULSE or LIRC_MODE_RAW
	 * lircd expects a long space first before a signal train to sync.
	 */
	FUNC22(rdev);

	FUNC5(dev, "setup in %s mode\n", rc_dev->rxuhfmode ? "UHF" : "IR");

	return ret;
rcerr:
	FUNC19(rdev);
	rdev = NULL;
clkerr:
	FUNC3(rc_dev->sys_clock);
err:
	FUNC17(rdev);
	FUNC4(dev, "Unable to register device (%d)\n", ret);
	return ret;
}