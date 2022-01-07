
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mv88e6060_priv {scalar_t__ sw_addr; int bus; } ;


 int mdiobus_write_nested (int ,scalar_t__,int,int ) ;

__attribute__((used)) static int reg_write(struct mv88e6060_priv *priv, int addr, int reg, u16 val)
{
 return mdiobus_write_nested(priv->bus, priv->sw_addr + addr, reg, val);
}
