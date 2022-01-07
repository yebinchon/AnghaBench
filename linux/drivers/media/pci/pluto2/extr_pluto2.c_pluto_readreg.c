
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pluto {int * io_mem; } ;


 size_t readl (int *) ;

__attribute__((used)) static inline u32 pluto_readreg(struct pluto *pluto, u32 reg)
{
 return readl(&pluto->io_mem[reg]);
}
