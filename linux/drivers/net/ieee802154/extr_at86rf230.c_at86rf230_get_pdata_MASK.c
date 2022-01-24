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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; struct at86rf230_platform_data* platform_data; } ;
struct spi_device {TYPE_1__ dev; } ;
struct at86rf230_platform_data {int rstn; int slp_tr; int /*<<< orphan*/  xtal_trim; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct spi_device *spi, int *rstn, int *slp_tr,
		    u8 *xtal_trim)
{
	struct at86rf230_platform_data *pdata = spi->dev.platform_data;
	int ret;

	if (!FUNC0(CONFIG_OF) || !spi->dev.of_node) {
		if (!pdata)
			return -ENOENT;

		*rstn = pdata->rstn;
		*slp_tr = pdata->slp_tr;
		*xtal_trim = pdata->xtal_trim;
		return 0;
	}

	*rstn = FUNC1(spi->dev.of_node, "reset-gpio", 0);
	*slp_tr = FUNC1(spi->dev.of_node, "sleep-gpio", 0);
	ret = FUNC2(spi->dev.of_node, "xtal-trim", xtal_trim);
	if (ret < 0 && ret != -EINVAL)
		return ret;

	return 0;
}