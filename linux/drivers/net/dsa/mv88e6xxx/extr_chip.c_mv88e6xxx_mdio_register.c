
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6xxx_mdio_bus {int external; int list; struct mv88e6xxx_chip* chip; struct mii_bus* bus; } ;
struct mv88e6xxx_chip {int mdios; int dev; } ;
struct mii_bus {char* name; int parent; int write; int read; int id; struct mv88e6xxx_mdio_bus* priv; } ;
struct device_node {char* full_name; } ;


 int ENOMEM ;
 int INIT_LIST_HEAD (int *) ;
 int MII_BUS_ID_SIZE ;
 int dev_err (int ,char*,int) ;
 struct mii_bus* devm_mdiobus_alloc_size (int ,int) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;
 int mv88e6xxx_g2_irq_mdio_free (struct mv88e6xxx_chip*,struct mii_bus*) ;
 int mv88e6xxx_g2_irq_mdio_setup (struct mv88e6xxx_chip*,struct mii_bus*) ;
 int mv88e6xxx_g2_scratch_gpio_set_smi (struct mv88e6xxx_chip*,int) ;
 int mv88e6xxx_mdio_read ;
 int mv88e6xxx_mdio_write ;
 int mv88e6xxx_reg_lock (struct mv88e6xxx_chip*) ;
 int mv88e6xxx_reg_unlock (struct mv88e6xxx_chip*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int snprintf (int ,int ,char*,struct device_node*) ;

__attribute__((used)) static int mv88e6xxx_mdio_register(struct mv88e6xxx_chip *chip,
       struct device_node *np,
       bool external)
{
 static int index;
 struct mv88e6xxx_mdio_bus *mdio_bus;
 struct mii_bus *bus;
 int err;

 if (external) {
  mv88e6xxx_reg_lock(chip);
  err = mv88e6xxx_g2_scratch_gpio_set_smi(chip, 1);
  mv88e6xxx_reg_unlock(chip);

  if (err)
   return err;
 }

 bus = devm_mdiobus_alloc_size(chip->dev, sizeof(*mdio_bus));
 if (!bus)
  return -ENOMEM;

 mdio_bus = bus->priv;
 mdio_bus->bus = bus;
 mdio_bus->chip = chip;
 INIT_LIST_HEAD(&mdio_bus->list);
 mdio_bus->external = external;

 if (np) {
  bus->name = np->full_name;
  snprintf(bus->id, MII_BUS_ID_SIZE, "%pOF", np);
 } else {
  bus->name = "mv88e6xxx SMI";
  snprintf(bus->id, MII_BUS_ID_SIZE, "mv88e6xxx-%d", index++);
 }

 bus->read = mv88e6xxx_mdio_read;
 bus->write = mv88e6xxx_mdio_write;
 bus->parent = chip->dev;

 if (!external) {
  err = mv88e6xxx_g2_irq_mdio_setup(chip, bus);
  if (err)
   return err;
 }

 err = of_mdiobus_register(bus, np);
 if (err) {
  dev_err(chip->dev, "Cannot register MDIO bus (%d)\n", err);
  mv88e6xxx_g2_irq_mdio_free(chip, bus);
  return err;
 }

 if (external)
  list_add_tail(&mdio_bus->list, &chip->mdios);
 else
  list_add(&mdio_bus->list, &chip->mdios);

 return 0;
}
