
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b44 {int flags; int phy_addr; } ;


 int B44_FLAG_EXTERNAL_PHY ;
 int __b44_writephy (struct b44*,int ,int,int ) ;

__attribute__((used)) static inline int b44_writephy(struct b44 *bp, int reg, u32 val)
{
 if (bp->flags & B44_FLAG_EXTERNAL_PHY)
  return 0;

 return __b44_writephy(bp, bp->phy_addr, reg, val);
}
