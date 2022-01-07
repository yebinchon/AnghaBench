
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt1 {scalar_t__ regs; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static void pt1_write_reg(struct pt1 *pt1, int reg, u32 data)
{
 writel(data, pt1->regs + reg * 4);
}
