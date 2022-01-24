#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct cqspi_st {void* rclk_en; int /*<<< orphan*/  trigger_address; int /*<<< orphan*/  fifo_width; int /*<<< orphan*/  fifo_depth; void* is_decoded_cs; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 void* FUNC1 (struct device_node*,char*) ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 struct cqspi_st* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device_node *np = pdev->dev.of_node;
	struct cqspi_st *cqspi = FUNC3(pdev);

	cqspi->is_decoded_cs = FUNC1(np, "cdns,is-decoded-cs");

	if (FUNC2(np, "cdns,fifo-depth", &cqspi->fifo_depth)) {
		FUNC0(&pdev->dev, "couldn't determine fifo-depth\n");
		return -ENXIO;
	}

	if (FUNC2(np, "cdns,fifo-width", &cqspi->fifo_width)) {
		FUNC0(&pdev->dev, "couldn't determine fifo-width\n");
		return -ENXIO;
	}

	if (FUNC2(np, "cdns,trigger-address",
				 &cqspi->trigger_address)) {
		FUNC0(&pdev->dev, "couldn't determine trigger-address\n");
		return -ENXIO;
	}

	cqspi->rclk_en = FUNC1(np, "cdns,rclk-en");

	return 0;
}