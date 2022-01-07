
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {struct mii_bus* bus; } ;
struct mii_bus {int mdio_lock; } ;


 int MDIO_MUTEX_NESTED ;
 int mt7530_mii_write (struct mt7530_priv*,int ,int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
mt7530_write(struct mt7530_priv *priv, u32 reg, u32 val)
{
 struct mii_bus *bus = priv->bus;

 mutex_lock_nested(&bus->mdio_lock, MDIO_MUTEX_NESTED);

 mt7530_mii_write(priv, reg, val);

 mutex_unlock(&bus->mdio_lock);
}
