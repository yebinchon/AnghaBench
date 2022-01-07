
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_mmcif_host {scalar_t__ addr; } ;


 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static inline void sh_mmcif_bitclr(struct sh_mmcif_host *host,
     unsigned int reg, u32 val)
{
 writel(~val & readl(host->addr + reg), host->addr + reg);
}
