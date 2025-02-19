
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct gpmi_nand_data {struct dma_chan** dma_chans; int dev; struct platform_device* pdev; } ;
struct dma_chan {int dummy; } ;


 int EINVAL ;
 int dev_err (int ,char*) ;
 struct dma_chan* dma_request_slave_channel (int *,char*) ;
 int release_dma_channels (struct gpmi_nand_data*) ;

__attribute__((used)) static int acquire_dma_channels(struct gpmi_nand_data *this)
{
 struct platform_device *pdev = this->pdev;
 struct dma_chan *dma_chan;


 dma_chan = dma_request_slave_channel(&pdev->dev, "rx-tx");
 if (!dma_chan) {
  dev_err(this->dev, "Failed to request DMA channel.\n");
  goto acquire_err;
 }

 this->dma_chans[0] = dma_chan;
 return 0;

acquire_err:
 release_dma_channels(this);
 return -EINVAL;
}
