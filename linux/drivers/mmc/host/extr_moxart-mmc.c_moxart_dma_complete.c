
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct moxart_host {int dma_complete; } ;


 int complete (int *) ;

__attribute__((used)) static void moxart_dma_complete(void *param)
{
 struct moxart_host *host = param;

 complete(&host->dma_complete);
}
