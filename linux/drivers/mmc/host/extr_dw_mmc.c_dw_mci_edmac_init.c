
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dw_mci_dma_slave {int dummy; } ;
struct dw_mci {TYPE_1__* dms; int dev; } ;
struct TYPE_3__ {int ch; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int dma_request_slave_channel (int ,char*) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;

__attribute__((used)) static int dw_mci_edmac_init(struct dw_mci *host)
{

 host->dms = kzalloc(sizeof(struct dw_mci_dma_slave), GFP_KERNEL);
 if (!host->dms)
  return -ENOMEM;

 host->dms->ch = dma_request_slave_channel(host->dev, "rx-tx");
 if (!host->dms->ch) {
  dev_err(host->dev, "Failed to get external DMA channel.\n");
  kfree(host->dms);
  host->dms = ((void*)0);
  return -ENXIO;
 }

 return 0;
}
