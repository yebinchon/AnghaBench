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
struct platform_device {int dummy; } ;
struct mii_bus {struct hisi_femac_mdio_data* priv; } ;
struct hisi_femac_mdio_data {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_bus*) ; 
 struct mii_bus* FUNC3 (struct platform_device*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct mii_bus *bus = FUNC3(pdev);
	struct hisi_femac_mdio_data *data = bus->priv;

	FUNC2(bus);
	FUNC0(data->clk);
	FUNC1(bus);

	return 0;
}