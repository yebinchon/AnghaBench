
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int offset; int length; } ;
struct mmc_request {struct mmc_data* data; } ;
struct mmc_host {int dummy; } ;
struct mmc_data {int sg_len; struct scatterlist* sg; } ;


 int EINVAL ;
 int ENOMEM ;
 int dev_err (int ,char*,...) ;
 int dma_map_sg (int ,struct scatterlist*,int ,int ) ;
 int mmc_dev (struct mmc_host*) ;
 int mmc_get_dma_dir (struct mmc_data*) ;

__attribute__((used)) static int meson_mx_mmc_map_dma(struct mmc_host *mmc, struct mmc_request *mrq)
{
 struct mmc_data *data = mrq->data;
 int dma_len;
 struct scatterlist *sg;

 if (!data)
  return 0;

 sg = data->sg;
 if (sg->offset & 3 || sg->length & 3) {
  dev_err(mmc_dev(mmc),
   "unaligned scatterlist: offset %x length %d\n",
   sg->offset, sg->length);
  return -EINVAL;
 }

 dma_len = dma_map_sg(mmc_dev(mmc), data->sg, data->sg_len,
        mmc_get_dma_dir(data));
 if (dma_len <= 0) {
  dev_err(mmc_dev(mmc), "dma_map_sg failed\n");
  return -ENOMEM;
 }

 return 0;
}
