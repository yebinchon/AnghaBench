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
struct device {int dummy; } ;
struct platform_device {struct device dev; } ;
struct mii_bus {struct fsl_pq_mdio_priv* priv; } ;
struct fsl_pq_mdio_priv {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 struct mii_bus* FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct device *device = &pdev->dev;
	struct mii_bus *bus = FUNC0(device);
	struct fsl_pq_mdio_priv *priv = bus->priv;

	FUNC3(bus);

	FUNC1(priv->map);
	FUNC2(bus);

	return 0;
}