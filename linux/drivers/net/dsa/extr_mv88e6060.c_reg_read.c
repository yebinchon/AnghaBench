
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv88e6060_priv {scalar_t__ sw_addr; int bus; } ;


 int mdiobus_read_nested (int ,scalar_t__,int) ;

__attribute__((used)) static int reg_read(struct mv88e6060_priv *priv, int addr, int reg)
{
 return mdiobus_read_nested(priv->bus, priv->sw_addr + addr, reg);
}
