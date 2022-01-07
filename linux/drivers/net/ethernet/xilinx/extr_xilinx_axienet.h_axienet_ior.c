
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct axienet_local {scalar_t__ regs; } ;
typedef scalar_t__ off_t ;


 int ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 axienet_ior(struct axienet_local *lp, off_t offset)
{
 return ioread32(lp->regs + offset);
}
