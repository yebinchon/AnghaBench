
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mt7530_dummy_poll {int reg; TYPE_1__* priv; } ;
struct mii_bus {int mdio_lock; } ;
struct TYPE_2__ {struct mii_bus* bus; } ;


 int MDIO_MUTEX_NESTED ;
 int mt7530_mii_read (TYPE_1__*,int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static u32
_mt7530_read(struct mt7530_dummy_poll *p)
{
 struct mii_bus *bus = p->priv->bus;
 u32 val;

 mutex_lock_nested(&bus->mdio_lock, MDIO_MUTEX_NESTED);

 val = mt7530_mii_read(p->priv, p->reg);

 mutex_unlock(&bus->mdio_lock);

 return val;
}
