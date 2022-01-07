
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt7530_priv {int bus; } ;
struct dsa_switch {struct mt7530_priv* priv; } ;


 int mdiobus_read_nested (int ,int,int) ;

__attribute__((used)) static int mt7530_phy_read(struct dsa_switch *ds, int port, int regnum)
{
 struct mt7530_priv *priv = ds->priv;

 return mdiobus_read_nested(priv->bus, port, regnum);
}
