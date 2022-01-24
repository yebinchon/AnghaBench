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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mx25_tsadc {int /*<<< orphan*/  domain; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mx25_tsadc*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,struct mx25_tsadc*) ; 
 int /*<<< orphan*/  mx25_tsadc_domain_ops ; 
 int /*<<< orphan*/  mx25_tsadc_irq_handler ; 
 int FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev,
				struct mx25_tsadc *tsadc)
{
	struct device *dev = &pdev->dev;
	struct device_node *np = dev->of_node;
	int irq;

	irq = FUNC3(pdev, 0);
	if (irq <= 0)
		return irq;

	tsadc->domain = FUNC1(np, 2, 0, &mx25_tsadc_domain_ops,
					      tsadc);
	if (!tsadc->domain) {
		FUNC0(dev, "Failed to add irq domain\n");
		return -ENOMEM;
	}

	FUNC2(irq, mx25_tsadc_irq_handler, tsadc);

	return 0;
}