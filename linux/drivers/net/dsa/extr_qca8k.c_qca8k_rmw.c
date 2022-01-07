
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct qca8k_priv {TYPE_1__* bus; } ;
struct TYPE_4__ {int mdio_lock; } ;


 int MDIO_MUTEX_NESTED ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int qca8k_mii_read32 (TYPE_1__*,int,int) ;
 int qca8k_mii_write32 (TYPE_1__*,int,int,int ) ;
 int qca8k_set_page (TYPE_1__*,int) ;
 int qca8k_split_addr (int ,int*,int*,int*) ;

__attribute__((used)) static u32
qca8k_rmw(struct qca8k_priv *priv, u32 reg, u32 mask, u32 val)
{
 u16 r1, r2, page;
 u32 ret;

 qca8k_split_addr(reg, &r1, &r2, &page);

 mutex_lock_nested(&priv->bus->mdio_lock, MDIO_MUTEX_NESTED);

 qca8k_set_page(priv->bus, page);
 ret = qca8k_mii_read32(priv->bus, 0x10 | r2, r1);
 ret &= ~mask;
 ret |= val;
 qca8k_mii_write32(priv->bus, 0x10 | r2, r1, ret);

 mutex_unlock(&priv->bus->mdio_lock);

 return ret;
}
