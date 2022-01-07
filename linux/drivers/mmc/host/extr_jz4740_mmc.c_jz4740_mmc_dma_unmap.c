
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_data {int host_cookie; int sg_len; int sg; } ;
struct jz4740_mmc_host {int dummy; } ;
struct dma_chan {TYPE_1__* device; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;
struct TYPE_2__ {int dev; } ;


 int COOKIE_UNMAPPED ;
 int dma_unmap_sg (int ,int ,int ,int) ;
 struct dma_chan* jz4740_mmc_get_dma_chan (struct jz4740_mmc_host*,struct mmc_data*) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static void jz4740_mmc_dma_unmap(struct jz4740_mmc_host *host,
     struct mmc_data *data)
{
 struct dma_chan *chan = jz4740_mmc_get_dma_chan(host, data);
 enum dma_data_direction dir = mmc_get_dma_dir(data);

 dma_unmap_sg(chan->device->dev, data->sg, data->sg_len, dir);
 data->host_cookie = COOKIE_UNMAPPED;
}
