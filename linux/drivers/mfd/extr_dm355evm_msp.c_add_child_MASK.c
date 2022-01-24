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
struct resource {int start; int /*<<< orphan*/  flags; } ;
struct device {int /*<<< orphan*/ * parent; } ;
struct platform_device {struct device dev; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
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

__attribute__((used)) static struct device *FUNC9(struct i2c_client *client, const char *name,
		void *pdata, unsigned pdata_len,
		bool can_wakeup, int irq)
{
	struct platform_device	*pdev;
	int			status;

	pdev = FUNC7(name, -1);
	if (!pdev)
		return FUNC0(-ENOMEM);

	FUNC3(&pdev->dev, can_wakeup);
	pdev->dev.parent = &client->dev;

	if (pdata) {
		status = FUNC5(pdev, pdata, pdata_len);
		if (status < 0) {
			FUNC1(&pdev->dev, "can't add platform_data\n");
			goto put_device;
		}
	}

	if (irq) {
		struct resource r = {
			.start = irq,
			.flags = IORESOURCE_IRQ,
		};

		status = FUNC6(pdev, &r, 1);
		if (status < 0) {
			FUNC1(&pdev->dev, "can't add irq\n");
			goto put_device;
		}
	}

	status = FUNC4(pdev);
	if (status)
		goto put_device;

	return &pdev->dev;

put_device:
	FUNC8(pdev);
	FUNC2(&client->dev, "failed to add device %s\n", name);
	return FUNC0(status);
}