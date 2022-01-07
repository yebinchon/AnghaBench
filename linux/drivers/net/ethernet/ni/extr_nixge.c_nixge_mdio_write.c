
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct nixge_priv {int dev; } ;
struct mii_bus {struct nixge_priv* priv; } ;


 int MII_ADDR_C45 ;
 int NIXGE_MDIO_ADDR (int) ;
 int NIXGE_MDIO_C22_WRITE ;
 int NIXGE_MDIO_C45_WRITE ;
 int NIXGE_MDIO_CLAUSE22 ;
 int NIXGE_MDIO_CLAUSE45 ;
 int NIXGE_MDIO_MMD (int) ;
 int NIXGE_MDIO_OP (int ) ;
 int NIXGE_MDIO_OP_ADDRESS ;
 int NIXGE_REG_MDIO_ADDR ;
 int NIXGE_REG_MDIO_CTRL ;
 int NIXGE_REG_MDIO_DATA ;
 int NIXGE_REG_MDIO_OP ;
 int dev_err (int ,char*) ;
 int nixge_ctrl_poll_timeout (struct nixge_priv*,int ,int,int,int,int) ;
 int nixge_ctrl_write_reg (struct nixge_priv*,int ,int) ;

__attribute__((used)) static int nixge_mdio_write(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
 struct nixge_priv *priv = bus->priv;
 u32 status, tmp;
 u16 device;
 int err;

 if (reg & MII_ADDR_C45) {
  device = (reg >> 16) & 0x1f;

  nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_ADDR, reg & 0xffff);

  tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_OP_ADDRESS)
   | NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);

  nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
  nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);

  err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
           !status, 10, 1000);
  if (err) {
   dev_err(priv->dev, "timeout setting address");
   return err;
  }

  tmp = NIXGE_MDIO_CLAUSE45 | NIXGE_MDIO_OP(NIXGE_MDIO_C45_WRITE)
   | NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);

  nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_DATA, val);
  nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
  err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
           !status, 10, 1000);
  if (err)
   dev_err(priv->dev, "timeout setting write command");
 } else {
  device = reg & 0x1f;

  tmp = NIXGE_MDIO_CLAUSE22 |
   NIXGE_MDIO_OP(NIXGE_MDIO_C22_WRITE) |
   NIXGE_MDIO_ADDR(phy_id) | NIXGE_MDIO_MMD(device);

  nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_DATA, val);
  nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_OP, tmp);
  nixge_ctrl_write_reg(priv, NIXGE_REG_MDIO_CTRL, 1);

  err = nixge_ctrl_poll_timeout(priv, NIXGE_REG_MDIO_CTRL, status,
           !status, 10, 1000);
  if (err)
   dev_err(priv->dev, "timeout setting write command");
 }

 return err;
}
