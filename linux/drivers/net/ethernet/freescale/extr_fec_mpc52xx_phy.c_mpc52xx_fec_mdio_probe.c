
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct resource {int start; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct mpc52xx_fec_mdio_priv {TYPE_1__* regs; } ;
struct mii_bus {char* name; struct device* parent; struct mpc52xx_fec_mdio_priv* priv; int id; int write; int read; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {int mii_speed; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MII_BUS_ID_SIZE ;
 int dev_set_drvdata (struct device*,struct mii_bus*) ;
 TYPE_1__* ioremap (int,int ) ;
 int iounmap (TYPE_1__*) ;
 int kfree (struct mpc52xx_fec_mdio_priv*) ;
 struct mpc52xx_fec_mdio_priv* kzalloc (int,int ) ;
 struct mii_bus* mdiobus_alloc () ;
 int mdiobus_free (struct mii_bus*) ;
 int mpc52xx_fec_mdio_read ;
 int mpc52xx_fec_mdio_write ;
 int mpc5xxx_get_bus_frequency (struct device_node*) ;
 int of_address_to_resource (struct device_node*,int ,struct resource*) ;
 int of_mdiobus_register (struct mii_bus*,struct device_node*) ;
 int out_be32 (int *,int) ;
 int resource_size (struct resource*) ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int mpc52xx_fec_mdio_probe(struct platform_device *of)
{
 struct device *dev = &of->dev;
 struct device_node *np = of->dev.of_node;
 struct mii_bus *bus;
 struct mpc52xx_fec_mdio_priv *priv;
 struct resource res;
 int err;

 bus = mdiobus_alloc();
 if (bus == ((void*)0))
  return -ENOMEM;
 priv = kzalloc(sizeof(*priv), GFP_KERNEL);
 if (priv == ((void*)0)) {
  err = -ENOMEM;
  goto out_free;
 }

 bus->name = "mpc52xx MII bus";
 bus->read = mpc52xx_fec_mdio_read;
 bus->write = mpc52xx_fec_mdio_write;


 err = of_address_to_resource(np, 0, &res);
 if (err)
  goto out_free;
 priv->regs = ioremap(res.start, resource_size(&res));
 if (priv->regs == ((void*)0)) {
  err = -ENOMEM;
  goto out_free;
 }

 snprintf(bus->id, MII_BUS_ID_SIZE, "%x", res.start);
 bus->priv = priv;

 bus->parent = dev;
 dev_set_drvdata(dev, bus);


 out_be32(&priv->regs->mii_speed,
  ((mpc5xxx_get_bus_frequency(of->dev.of_node) >> 20) / 5) << 1);

 err = of_mdiobus_register(bus, np);
 if (err)
  goto out_unmap;

 return 0;

 out_unmap:
 iounmap(priv->regs);
 out_free:
 kfree(priv);
 mdiobus_free(bus);

 return err;
}
