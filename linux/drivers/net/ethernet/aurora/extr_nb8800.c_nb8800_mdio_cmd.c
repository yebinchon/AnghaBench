
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nb8800_priv {int dummy; } ;
struct mii_bus {struct nb8800_priv* priv; } ;


 int MDIO_CMD_GO ;
 int NB8800_MDIO_CMD ;
 int nb8800_mdio_wait (struct mii_bus*) ;
 int nb8800_writel (struct nb8800_priv*,int ,int) ;
 int udelay (int) ;

__attribute__((used)) static int nb8800_mdio_cmd(struct mii_bus *bus, u32 cmd)
{
 struct nb8800_priv *priv = bus->priv;
 int err;

 err = nb8800_mdio_wait(bus);
 if (err)
  return err;

 nb8800_writel(priv, NB8800_MDIO_CMD, cmd);
 udelay(10);
 nb8800_writel(priv, NB8800_MDIO_CMD, cmd | MDIO_CMD_GO);

 return nb8800_mdio_wait(bus);
}
