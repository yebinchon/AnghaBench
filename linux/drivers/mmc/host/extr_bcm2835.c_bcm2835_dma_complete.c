
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_host {int dma_work; } ;


 int schedule_work (int *) ;

__attribute__((used)) static void bcm2835_dma_complete(void *param)
{
 struct bcm2835_host *host = param;

 schedule_work(&host->dma_work);
}
