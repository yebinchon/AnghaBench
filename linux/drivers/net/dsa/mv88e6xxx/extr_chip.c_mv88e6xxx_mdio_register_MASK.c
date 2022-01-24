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
struct mv88e6xxx_mdio_bus {int external; int /*<<< orphan*/  list; struct mv88e6xxx_chip* chip; struct mii_bus* bus; } ;
struct mv88e6xxx_chip {int /*<<< orphan*/  mdios; int /*<<< orphan*/  dev; } ;
struct mii_bus {char* name; int /*<<< orphan*/  parent; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  id; struct mv88e6xxx_mdio_bus* priv; } ;
struct device_node {char* full_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MII_BUS_ID_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct mii_bus* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct mv88e6xxx_chip*,struct mii_bus*) ; 
 int FUNC6 (struct mv88e6xxx_chip*,struct mii_bus*) ; 
 int FUNC7 (struct mv88e6xxx_chip*,int) ; 
 int /*<<< orphan*/  mv88e6xxx_mdio_read ; 
 int /*<<< orphan*/  mv88e6xxx_mdio_write ; 
 int /*<<< orphan*/  FUNC8 (struct mv88e6xxx_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct mv88e6xxx_chip*) ; 
 int FUNC10 (struct mii_bus*,struct device_node*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct device_node*) ; 

__attribute__((used)) static int FUNC12(struct mv88e6xxx_chip *chip,
				   struct device_node *np,
				   bool external)
{
	static int index;
	struct mv88e6xxx_mdio_bus *mdio_bus;
	struct mii_bus *bus;
	int err;

	if (external) {
		FUNC8(chip);
		err = FUNC7(chip, true);
		FUNC9(chip);

		if (err)
			return err;
	}

	bus = FUNC2(chip->dev, sizeof(*mdio_bus));
	if (!bus)
		return -ENOMEM;

	mdio_bus = bus->priv;
	mdio_bus->bus = bus;
	mdio_bus->chip = chip;
	FUNC0(&mdio_bus->list);
	mdio_bus->external = external;

	if (np) {
		bus->name = np->full_name;
		FUNC11(bus->id, MII_BUS_ID_SIZE, "%pOF", np);
	} else {
		bus->name = "mv88e6xxx SMI";
		FUNC11(bus->id, MII_BUS_ID_SIZE, "mv88e6xxx-%d", index++);
	}

	bus->read = mv88e6xxx_mdio_read;
	bus->write = mv88e6xxx_mdio_write;
	bus->parent = chip->dev;

	if (!external) {
		err = FUNC6(chip, bus);
		if (err)
			return err;
	}

	err = FUNC10(bus, np);
	if (err) {
		FUNC1(chip->dev, "Cannot register MDIO bus (%d)\n", err);
		FUNC5(chip, bus);
		return err;
	}

	if (external)
		FUNC4(&mdio_bus->list, &chip->mdios);
	else
		FUNC3(&mdio_bus->list, &chip->mdios);

	return 0;
}