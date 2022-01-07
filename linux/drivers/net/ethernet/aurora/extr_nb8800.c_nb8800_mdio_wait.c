
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nb8800_priv {scalar_t__ base; } ;
struct mii_bus {struct nb8800_priv* priv; } ;


 int MDIO_CMD_GO ;
 scalar_t__ NB8800_MDIO_CMD ;
 int readl_poll_timeout_atomic (scalar_t__,int,int,int,int) ;

__attribute__((used)) static int nb8800_mdio_wait(struct mii_bus *bus)
{
 struct nb8800_priv *priv = bus->priv;
 u32 val;

 return readl_poll_timeout_atomic(priv->base + NB8800_MDIO_CMD,
      val, !(val & MDIO_CMD_GO), 1, 1000);
}
