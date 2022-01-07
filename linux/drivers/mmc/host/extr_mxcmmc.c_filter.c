
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxcmci_host {int dma_data; } ;
struct dma_chan {int * private; } ;


 int imx_dma_is_general_purpose (struct dma_chan*) ;

__attribute__((used)) static bool filter(struct dma_chan *chan, void *param)
{
 struct mxcmci_host *host = param;

 if (!imx_dma_is_general_purpose(chan))
  return 0;

 chan->private = &host->dma_data;

 return 1;
}
