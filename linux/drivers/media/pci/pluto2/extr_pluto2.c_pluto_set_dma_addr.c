
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pluto {int dma_addr; } ;


 int REG_PCAR ;
 int pluto_writereg (struct pluto*,int ,int ) ;

__attribute__((used)) static void pluto_set_dma_addr(struct pluto *pluto)
{
 pluto_writereg(pluto, REG_PCAR, pluto->dma_addr);
}
