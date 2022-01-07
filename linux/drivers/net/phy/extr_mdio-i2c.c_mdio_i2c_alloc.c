
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mii_bus {struct i2c_adapter* priv; int write; int read; struct device* parent; int id; } ;
struct i2c_adapter {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct mii_bus* ERR_PTR (int ) ;
 int I2C_FUNC_I2C ;
 int MII_BUS_ID_SIZE ;
 char* dev_name (struct device*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int i2c_mii_read ;
 int i2c_mii_write ;
 struct mii_bus* mdiobus_alloc () ;
 int snprintf (int ,int ,char*,char*) ;

struct mii_bus *mdio_i2c_alloc(struct device *parent, struct i2c_adapter *i2c)
{
 struct mii_bus *mii;

 if (!i2c_check_functionality(i2c, I2C_FUNC_I2C))
  return ERR_PTR(-EINVAL);

 mii = mdiobus_alloc();
 if (!mii)
  return ERR_PTR(-ENOMEM);

 snprintf(mii->id, MII_BUS_ID_SIZE, "i2c:%s", dev_name(parent));
 mii->parent = parent;
 mii->read = i2c_mii_read;
 mii->write = i2c_mii_write;
 mii->priv = i2c;

 return mii;
}
