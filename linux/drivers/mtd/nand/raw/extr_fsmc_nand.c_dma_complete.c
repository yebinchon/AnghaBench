
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fsmc_nand_data {int dma_access_complete; } ;


 int complete (int *) ;

__attribute__((used)) static void dma_complete(void *param)
{
 struct fsmc_nand_data *host = param;

 complete(&host->dma_access_complete);
}
