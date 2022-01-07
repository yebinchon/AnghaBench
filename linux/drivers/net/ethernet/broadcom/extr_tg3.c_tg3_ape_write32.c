
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3 {scalar_t__ aperegs; } ;


 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void tg3_ape_write32(struct tg3 *tp, u32 off, u32 val)
{
 writel(val, tp->aperegs + off);
}
