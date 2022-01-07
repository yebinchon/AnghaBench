
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pluto {int * io_mem; } ;


 int writel (size_t,int *) ;

__attribute__((used)) static inline void pluto_writereg(struct pluto *pluto, u32 reg, u32 val)
{
 writel(val, &pluto->io_mem[reg]);
}
