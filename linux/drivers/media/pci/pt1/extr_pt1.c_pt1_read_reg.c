
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pt1 {scalar_t__ regs; } ;


 int readl (scalar_t__) ;

__attribute__((used)) static u32 pt1_read_reg(struct pt1 *pt1, int reg)
{
 return readl(pt1->regs + reg * 4);
}
