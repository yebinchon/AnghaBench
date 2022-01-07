
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6060_priv {int sw_addr; int bus; } ;
struct device {int dummy; } ;
struct mdio_device {int addr; int bus; struct device dev; } ;
struct dsa_switch {int * ops; struct device* dev; struct mv88e6060_priv* priv; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MV88E6060_PORTS ;
 int dev_info (struct device*,char*,char const*) ;
 int dev_set_drvdata (struct device*,struct dsa_switch*) ;
 struct mv88e6060_priv* devm_kzalloc (struct device*,int,int ) ;
 int dsa_register_switch (struct dsa_switch*) ;
 struct dsa_switch* dsa_switch_alloc (struct device*,int ) ;
 char* mv88e6060_get_name (int ,int ) ;
 int mv88e6060_switch_ops ;

__attribute__((used)) static int mv88e6060_probe(struct mdio_device *mdiodev)
{
 struct device *dev = &mdiodev->dev;
 struct mv88e6060_priv *priv;
 struct dsa_switch *ds;
 const char *name;

 priv = devm_kzalloc(dev, sizeof(*priv), GFP_KERNEL);
 if (!priv)
  return -ENOMEM;

 priv->bus = mdiodev->bus;
 priv->sw_addr = mdiodev->addr;

 name = mv88e6060_get_name(priv->bus, priv->sw_addr);
 if (!name)
  return -ENODEV;

 dev_info(dev, "switch %s detected\n", name);

 ds = dsa_switch_alloc(dev, MV88E6060_PORTS);
 if (!ds)
  return -ENOMEM;

 ds->priv = priv;
 ds->dev = dev;
 ds->ops = &mv88e6060_switch_ops;

 dev_set_drvdata(dev, ds);

 return dsa_register_switch(ds);
}
