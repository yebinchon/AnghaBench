
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int pasemi_read_dma_reg (unsigned int) ;

__attribute__((used)) static unsigned int read_dma_reg(unsigned int reg)
{
 return pasemi_read_dma_reg(reg);
}
