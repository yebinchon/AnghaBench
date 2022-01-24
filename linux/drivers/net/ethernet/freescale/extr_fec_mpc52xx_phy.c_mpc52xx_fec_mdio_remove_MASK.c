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
struct mpc52xx_fec_mdio_priv {int /*<<< orphan*/  regs; } ;
struct mii_bus {struct mpc52xx_fec_mdio_priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mpc52xx_fec_mdio_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct mii_bus*) ; 
 int /*<<< orphan*/  FUNC3 (struct mii_bus*) ; 
 struct mii_bus* FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *of)
{
	struct mii_bus *bus = FUNC4(of);
	struct mpc52xx_fec_mdio_priv *priv = bus->priv;

	FUNC3(bus);
	FUNC0(priv->regs);
	FUNC1(priv);
	FUNC2(bus);

	return 0;
}