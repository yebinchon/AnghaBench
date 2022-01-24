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
typedef  int u32 ;
struct resource {int dummy; } ;
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct gemini_ethernet {int /*<<< orphan*/  freeq_lock; int /*<<< orphan*/  irq_lock; scalar_t__ base; struct device* dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ GLOBAL_TOE_VERSION_REG ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,char*,int,int) ; 
 scalar_t__ FUNC5 (struct device*,struct resource*) ; 
 struct gemini_ethernet* FUNC6 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct gemini_ethernet*) ; 
 int FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct gemini_ethernet *geth;
	unsigned int retry = 5;
	struct resource *res;
	u32 val;

	/* Global registers */
	geth = FUNC6(dev, sizeof(*geth), GFP_KERNEL);
	if (!geth)
		return -ENOMEM;
	res = FUNC8(pdev, IORESOURCE_MEM, 0);
	if (!res)
		return -ENODEV;
	geth->base = FUNC5(dev, res);
	if (FUNC0(geth->base))
		return FUNC1(geth->base);
	geth->dev = dev;

	/* Wait for ports to stabilize */
	do {
		FUNC12(2);
		val = FUNC10(geth->base + GLOBAL_TOE_VERSION_REG);
		FUNC2();
	} while (!val && --retry);
	if (!retry) {
		FUNC3(dev, "failed to reset ethernet\n");
		return -EIO;
	}
	FUNC4(dev, "Ethernet device ID: 0x%03x, revision 0x%01x\n",
		 (val >> 4) & 0xFFFU, val & 0xFU);

	FUNC11(&geth->irq_lock);
	FUNC11(&geth->freeq_lock);

	/* The children will use this */
	FUNC9(pdev, geth);

	/* Spawn child devices for the two ports */
	return FUNC7(dev);
}