
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {scalar_t__ regs; } ;


 void iowrite32be (int ,scalar_t__) ;

__attribute__((used)) static void _temac_iow_be(struct temac_local *lp, int offset, u32 value)
{
 return iowrite32be(value, lp->regs + offset);
}
