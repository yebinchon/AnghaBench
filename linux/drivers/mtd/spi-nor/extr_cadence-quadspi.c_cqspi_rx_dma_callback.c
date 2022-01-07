
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cqspi_st {int rx_dma_complete; } ;


 int complete (int *) ;

__attribute__((used)) static void cqspi_rx_dma_callback(void *param)
{
 struct cqspi_st *cqspi = param;

 complete(&cqspi->rx_dma_complete);
}
