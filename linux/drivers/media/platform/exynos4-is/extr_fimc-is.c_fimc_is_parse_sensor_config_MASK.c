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
typedef  scalar_t__ u32 ;
struct fimc_is_sensor {scalar_t__ i2c_bus; int /*<<< orphan*/  drvdata; } ;
struct fimc_is {TYPE_1__* pdev; struct fimc_is_sensor* sensor; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 scalar_t__ FIMC_INPUT_MIPI_CSI2_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC3 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int FUNC5 (struct device_node*,char*,scalar_t__*) ; 

__attribute__((used)) static int FUNC6(struct fimc_is *is, unsigned int index,
						struct device_node *node)
{
	struct fimc_is_sensor *sensor = &is->sensor[index];
	struct device_node *ep, *port;
	u32 tmp = 0;
	int ret;

	sensor->drvdata = FUNC1(node);
	if (!sensor->drvdata) {
		FUNC0(&is->pdev->dev, "no driver data found for: %pOF\n",
							 node);
		return -EINVAL;
	}

	ep = FUNC2(node, NULL);
	if (!ep)
		return -ENXIO;

	port = FUNC3(ep);
	FUNC4(ep);
	if (!port)
		return -ENXIO;

	/* Use MIPI-CSIS channel id to determine the ISP I2C bus index. */
	ret = FUNC5(port, "reg", &tmp);
	if (ret < 0) {
		FUNC0(&is->pdev->dev, "reg property not found at: %pOF\n",
							 port);
		FUNC4(port);
		return ret;
	}

	FUNC4(port);
	sensor->i2c_bus = tmp - FIMC_INPUT_MIPI_CSI2_0;
	return 0;
}