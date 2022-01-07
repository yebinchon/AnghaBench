
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_nand_controller {int mck; scalar_t__ dmac; } ;


 int clk_put (int ) ;
 int dma_release_channel (scalar_t__) ;

__attribute__((used)) static void atmel_nand_controller_cleanup(struct atmel_nand_controller *nc)
{
 if (nc->dmac)
  dma_release_channel(nc->dmac);

 clk_put(nc->mck);
}
