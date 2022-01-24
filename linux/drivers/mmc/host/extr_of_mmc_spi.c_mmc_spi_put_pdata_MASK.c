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
struct device {int /*<<< orphan*/ * platform_data; struct device_node* of_node; } ;
struct spi_device {struct device dev; } ;
struct of_mmc_spi {int dummy; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct of_mmc_spi*) ; 
 struct of_mmc_spi* FUNC1 (struct device*) ; 

void FUNC2(struct spi_device *spi)
{
	struct device *dev = &spi->dev;
	struct device_node *np = dev->of_node;
	struct of_mmc_spi *oms = FUNC1(dev);

	if (!dev->platform_data || !np)
		return;

	FUNC0(oms);
	dev->platform_data = NULL;
}