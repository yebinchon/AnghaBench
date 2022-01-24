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
struct TYPE_2__ {struct cc2520_platform_data* platform_data; struct device_node* of_node; } ;
struct spi_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;
struct cc2520_private {int amplified; void* fifo_pin; } ;
struct cc2520_platform_data {void* reset; void* vreg; void* cca; void* sfd; void* fifop; void* fifo; } ;

/* Variables and functions */
 int ENOENT ; 
 void* FUNC0 (struct device_node*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct device_node*,char*) ; 
 struct cc2520_private* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi,
				    struct cc2520_platform_data *pdata)
{
	struct device_node *np = spi->dev.of_node;
	struct cc2520_private *priv = FUNC2(spi);

	if (!np) {
		struct cc2520_platform_data *spi_pdata = spi->dev.platform_data;

		if (!spi_pdata)
			return -ENOENT;
		*pdata = *spi_pdata;
		priv->fifo_pin = pdata->fifo;
		return 0;
	}

	pdata->fifo = FUNC0(np, "fifo-gpio", 0);
	priv->fifo_pin = pdata->fifo;

	pdata->fifop = FUNC0(np, "fifop-gpio", 0);

	pdata->sfd = FUNC0(np, "sfd-gpio", 0);
	pdata->cca = FUNC0(np, "cca-gpio", 0);
	pdata->vreg = FUNC0(np, "vreg-gpio", 0);
	pdata->reset = FUNC0(np, "reset-gpio", 0);

	/* CC2591 front end for CC2520 */
	if (FUNC1(np, "amplified"))
		priv->amplified = true;

	return 0;
}