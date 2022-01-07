
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tg3 {int phy_addr; } ;


 int __tg3_writephy (struct tg3*,int ,int,int ) ;

__attribute__((used)) static int tg3_writephy(struct tg3 *tp, int reg, u32 val)
{
 return __tg3_writephy(tp, tp->phy_addr, reg, val);
}
