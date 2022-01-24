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
struct sm501_platdata {scalar_t__ gpio_i2c_nr; scalar_t__ gpio_i2c; struct sm501_initdata* init; } ;
struct sm501_initdata {int devices; } ;
struct sm501_devdata {unsigned long rev; int /*<<< orphan*/  dev; struct sm501_platdata* platdata; int /*<<< orphan*/  irq; scalar_t__ regs; int /*<<< orphan*/  devices; int /*<<< orphan*/  reg_lock; int /*<<< orphan*/  clock_lock; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ SM501_DEVICEID ; 
 unsigned long SM501_DEVICEID_IDMASK ; 
 unsigned long SM501_DEVICEID_REVMASK ; 
 unsigned long SM501_DEVICEID_SM501 ; 
 scalar_t__ SM501_DRAM_CONTROL ; 
 scalar_t__ SM501_IRQ_MASK ; 
 int SM501_USE_GPIO ; 
 int SM501_USE_UART0 ; 
 int SM501_USE_UART1 ; 
 int SM501_USE_USB_HOST ; 
 int /*<<< orphan*/  dev_attr_dbg_regs ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__,unsigned long,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sm501_devdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct sm501_devdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct sm501_devdata*) ; 
 int /*<<< orphan*/  FUNC8 (struct sm501_devdata*) ; 
 int /*<<< orphan*/  FUNC9 (struct sm501_devdata*,struct sm501_initdata*) ; 
 scalar_t__* sm501_mem_local ; 
 int /*<<< orphan*/  FUNC10 (struct sm501_devdata*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (struct sm501_devdata*) ; 
 int /*<<< orphan*/  FUNC12 (struct sm501_devdata*,struct sm501_platdata*) ; 
 int /*<<< orphan*/  FUNC13 (struct sm501_devdata*,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sm501_devdata*,scalar_t__*) ; 
 unsigned long FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct sm501_devdata *sm)
{
	struct sm501_initdata *idata;
	struct sm501_platdata *pdata;
	resource_size_t mem_avail;
	unsigned long dramctrl;
	unsigned long devid;
	int ret;

	FUNC4(&sm->clock_lock);
	FUNC17(&sm->reg_lock);

	FUNC0(&sm->devices);

	devid = FUNC15(sm->regs + SM501_DEVICEID);

	if ((devid & SM501_DEVICEID_IDMASK) != SM501_DEVICEID_SM501) {
		FUNC1(sm->dev, "incorrect device id %08lx\n", devid);
		return -EINVAL;
	}

	/* disable irqs */
	FUNC16(0, sm->regs + SM501_IRQ_MASK);

	dramctrl = FUNC15(sm->regs + SM501_DRAM_CONTROL);
	mem_avail = sm501_mem_local[(dramctrl >> 13) & 0x7];

	FUNC2(sm->dev, "SM501 At %p: Version %08lx, %ld Mb, IRQ %d\n",
		 sm->regs, devid, (unsigned long)mem_avail >> 20, sm->irq);

	sm->rev = devid & SM501_DEVICEID_REVMASK;

	FUNC7(sm);

	ret = FUNC3(sm->dev, &dev_attr_dbg_regs);
	if (ret)
		FUNC1(sm->dev, "failed to create debug regs file\n");

	FUNC6(sm);

	/* check to see if we have some device initialisation */

	pdata = sm->platdata;
	idata = pdata ? pdata->init : NULL;

	if (idata) {
		FUNC9(sm, idata);

		if (idata->devices & SM501_USE_USB_HOST)
			FUNC14(sm, &mem_avail);
		if (idata->devices & (SM501_USE_UART0 | SM501_USE_UART1))
			FUNC13(sm, idata->devices);
		if (idata->devices & SM501_USE_GPIO)
			FUNC11(sm);
	}

	if (pdata && pdata->gpio_i2c && pdata->gpio_i2c_nr > 0) {
		if (!FUNC8(sm))
			FUNC1(sm->dev, "no gpio available for i2c gpio.\n");
		else
			FUNC12(sm, pdata);
	}

	ret = FUNC5(sm);
	if (ret) {
		FUNC1(sm->dev, "M1X and M clocks sourced from different "
					"PLLs\n");
		return -EINVAL;
	}

	/* always create a framebuffer */
	FUNC10(sm, &mem_avail);

	return 0;
}