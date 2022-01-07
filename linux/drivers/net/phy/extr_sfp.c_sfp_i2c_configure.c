
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfp {struct mii_bus* i2c_mii; int dev; int write; int read; struct i2c_adapter* i2c; } ;
struct mii_bus {char* name; int phy_mask; } ;
struct i2c_adapter {int dummy; } ;


 int EINVAL ;
 int I2C_FUNC_I2C ;
 scalar_t__ IS_ERR (struct mii_bus*) ;
 int PTR_ERR (struct mii_bus*) ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 struct mii_bus* mdio_i2c_alloc (int ,struct i2c_adapter*) ;
 int mdiobus_free (struct mii_bus*) ;
 int mdiobus_register (struct mii_bus*) ;
 int sfp_i2c_read ;
 int sfp_i2c_write ;

__attribute__((used)) static int sfp_i2c_configure(struct sfp *sfp, struct i2c_adapter *i2c)
{
 struct mii_bus *i2c_mii;
 int ret;

 if (!i2c_check_functionality(i2c, I2C_FUNC_I2C))
  return -EINVAL;

 sfp->i2c = i2c;
 sfp->read = sfp_i2c_read;
 sfp->write = sfp_i2c_write;

 i2c_mii = mdio_i2c_alloc(sfp->dev, i2c);
 if (IS_ERR(i2c_mii))
  return PTR_ERR(i2c_mii);

 i2c_mii->name = "SFP I2C Bus";
 i2c_mii->phy_mask = ~0;

 ret = mdiobus_register(i2c_mii);
 if (ret < 0) {
  mdiobus_free(i2c_mii);
  return ret;
 }

 sfp->i2c_mii = i2c_mii;

 return 0;
}
