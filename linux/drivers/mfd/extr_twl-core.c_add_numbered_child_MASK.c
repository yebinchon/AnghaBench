#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct twl_client {TYPE_2__* client; } ;
struct resource {int start; int /*<<< orphan*/  flags; } ;
struct device {int /*<<< orphan*/ * parent; } ;
struct platform_device {struct device dev; } ;
struct TYPE_6__ {struct twl_client* twl_modules; TYPE_1__* twl_map; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {int sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRIVER_NAME ; 
 int ENOMEM ; 
 int EPERM ; 
 struct device* FUNC0 (int) ; 
 int /*<<< orphan*/  IORESOURCE_IRQ ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*,int) ; 
 int FUNC4 (struct platform_device*) ; 
 int FUNC5 (struct platform_device*,void*,unsigned int) ; 
 int FUNC6 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC7 (char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC10 () ; 
 TYPE_3__* twl_priv ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static struct device *
FUNC12(unsigned mod_no, const char *name, int num,
		void *pdata, unsigned pdata_len,
		bool can_wakeup, int irq0, int irq1)
{
	struct platform_device	*pdev;
	struct twl_client	*twl;
	int			status, sid;

	if (FUNC11(mod_no >= FUNC10())) {
		FUNC9("%s: invalid module number %d\n", DRIVER_NAME, mod_no);
		return FUNC0(-EPERM);
	}
	sid = twl_priv->twl_map[mod_no].sid;
	twl = &twl_priv->twl_modules[sid];

	pdev = FUNC7(name, num);
	if (!pdev)
		return FUNC0(-ENOMEM);

	pdev->dev.parent = &twl->client->dev;

	if (pdata) {
		status = FUNC5(pdev, pdata, pdata_len);
		if (status < 0) {
			FUNC1(&pdev->dev, "can't add platform_data\n");
			goto put_device;
		}
	}

	if (irq0) {
		struct resource r[2] = {
			{ .start = irq0, .flags = IORESOURCE_IRQ, },
			{ .start = irq1, .flags = IORESOURCE_IRQ, },
		};

		status = FUNC6(pdev, r, irq1 ? 2 : 1);
		if (status < 0) {
			FUNC1(&pdev->dev, "can't add irqs\n");
			goto put_device;
		}
	}

	status = FUNC4(pdev);
	if (status)
		goto put_device;

	FUNC3(&pdev->dev, can_wakeup);

	return &pdev->dev;

put_device:
	FUNC8(pdev);
	FUNC2(&twl->client->dev, "failed to add device %s\n", name);
	return FUNC0(status);
}