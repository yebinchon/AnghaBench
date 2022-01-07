
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct temac_local {scalar_t__ regs; } ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static u32 _temac_ior_le(struct temac_local *lp, int offset)
{
 return ioread32(lp->regs + offset);
}
