
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mmcif_host {int dma_complete; struct mmc_request* mrq; } ;
struct mmc_request {int data; } ;
struct device {int dummy; } ;


 scalar_t__ WARN (int,char*,int ) ;
 int complete (int *) ;
 int dev_dbg (struct device*,char*) ;
 int dev_name (struct device*) ;
 struct device* sh_mmcif_host_to_dev (struct sh_mmcif_host*) ;

__attribute__((used)) static void sh_mmcif_dma_complete(void *arg)
{
 struct sh_mmcif_host *host = arg;
 struct mmc_request *mrq = host->mrq;
 struct device *dev = sh_mmcif_host_to_dev(host);

 dev_dbg(dev, "Command completed\n");

 if (WARN(!mrq || !mrq->data, "%s: NULL data in DMA completion!\n",
   dev_name(dev)))
  return;

 complete(&host->dma_complete);
}
