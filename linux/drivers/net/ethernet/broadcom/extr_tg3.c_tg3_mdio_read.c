
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int lock; } ;
struct mii_bus {struct tg3* priv; } ;


 int EIO ;
 scalar_t__ __tg3_readphy (struct tg3*,int,int,int*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int tg3_mdio_read(struct mii_bus *bp, int mii_id, int reg)
{
 struct tg3 *tp = bp->priv;
 u32 val;

 spin_lock_bh(&tp->lock);

 if (__tg3_readphy(tp, mii_id, reg, &val))
  val = -EIO;

 spin_unlock_bh(&tp->lock);

 return val;
}
