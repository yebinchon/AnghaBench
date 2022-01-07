
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct tg3 {scalar_t__ regs; } ;


 int readl (scalar_t__) ;
 int writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static void tg3_write_flush_reg32(struct tg3 *tp, u32 off, u32 val)
{
 writel(val, tp->regs + off);
 readl(tp->regs + off);
}
