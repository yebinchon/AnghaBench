
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mt7530_priv {int bus; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;


 int mdiobus_write_nested (int ,int,int,int ) ;

__attribute__((used)) static int mt7530_phy_write(struct dsa_switch *ds, int port, int regnum,
       u16 val)
{
 struct mt7530_priv *priv = ds->priv;

 return mdiobus_write_nested(priv->bus, port, regnum, val);
}
