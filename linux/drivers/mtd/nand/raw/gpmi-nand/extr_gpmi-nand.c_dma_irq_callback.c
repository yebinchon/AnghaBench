
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;
struct gpmi_nand_data {struct completion dma_done; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void dma_irq_callback(void *param)
{
 struct gpmi_nand_data *this = param;
 struct completion *dma_c = &this->dma_done;

 complete(dma_c);
}
