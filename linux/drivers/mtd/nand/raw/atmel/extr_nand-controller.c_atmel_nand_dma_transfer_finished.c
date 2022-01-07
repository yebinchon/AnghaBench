
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void atmel_nand_dma_transfer_finished(void *data)
{
 struct completion *finished = data;

 complete(finished);
}
