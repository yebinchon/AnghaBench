
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt7530_priv {struct mii_bus* bus; } ;
struct mii_bus {int mdio_lock; } ;


 int MDIO_MMD_VEND2 ;
 int MDIO_MUTEX_NESTED ;
 int core_read_mmd_indirect (struct mt7530_priv*,int ,int ) ;
 int core_write_mmd_indirect (struct mt7530_priv*,int ,int ,int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void
core_rmw(struct mt7530_priv *priv, u32 reg, u32 mask, u32 set)
{
 struct mii_bus *bus = priv->bus;
 u32 val;

 mutex_lock_nested(&bus->mdio_lock, MDIO_MUTEX_NESTED);

 val = core_read_mmd_indirect(priv, reg, MDIO_MMD_VEND2);
 val &= ~mask;
 val |= set;
 core_write_mmd_indirect(priv, reg, MDIO_MMD_VEND2, val);

 mutex_unlock(&bus->mdio_lock);
}
