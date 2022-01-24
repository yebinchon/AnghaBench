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
typedef  int u16 ;
struct mii_bus {int /*<<< orphan*/  dev; struct gswip_priv* priv; } ;
struct gswip_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSWIP_MDIO_CTRL ; 
 int GSWIP_MDIO_CTRL_BUSY ; 
 int GSWIP_MDIO_CTRL_PHYAD_MASK ; 
 int GSWIP_MDIO_CTRL_PHYAD_SHIFT ; 
 int GSWIP_MDIO_CTRL_REGAD_MASK ; 
 int GSWIP_MDIO_CTRL_WR ; 
 int /*<<< orphan*/  GSWIP_MDIO_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct gswip_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct gswip_priv*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct mii_bus *bus, int addr, int reg, u16 val)
{
	struct gswip_priv *priv = bus->priv;
	int err;

	err = FUNC1(priv);
	if (err) {
		FUNC0(&bus->dev, "waiting for MDIO bus busy timed out\n");
		return err;
	}

	FUNC2(priv, val, GSWIP_MDIO_WRITE);
	FUNC2(priv, GSWIP_MDIO_CTRL_BUSY | GSWIP_MDIO_CTRL_WR |
		((addr & GSWIP_MDIO_CTRL_PHYAD_MASK) << GSWIP_MDIO_CTRL_PHYAD_SHIFT) |
		(reg & GSWIP_MDIO_CTRL_REGAD_MASK),
		GSWIP_MDIO_CTRL);

	return 0;
}