
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mii_bus {int dummy; } ;


 int MDIO_CMD_ADDR (int) ;
 int MDIO_CMD_DATA (int ) ;
 int MDIO_CMD_REG (int) ;
 int MDIO_CMD_WR ;
 int nb8800_mdio_cmd (struct mii_bus*,int) ;

__attribute__((used)) static int nb8800_mdio_write(struct mii_bus *bus, int phy_id, int reg, u16 val)
{
 u32 cmd = MDIO_CMD_ADDR(phy_id) | MDIO_CMD_REG(reg) |
  MDIO_CMD_DATA(val) | MDIO_CMD_WR;

 return nb8800_mdio_cmd(bus, cmd);
}
