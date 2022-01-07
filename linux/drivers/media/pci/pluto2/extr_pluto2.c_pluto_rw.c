
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pluto {int * io_mem; } ;


 size_t readl (int *) ;
 int writel (size_t,int *) ;

__attribute__((used)) static inline void pluto_rw(struct pluto *pluto, u32 reg, u32 mask, u32 bits)
{
 u32 val = readl(&pluto->io_mem[reg]);
 val &= ~mask;
 val |= bits;
 writel(val, &pluto->io_mem[reg]);
}
