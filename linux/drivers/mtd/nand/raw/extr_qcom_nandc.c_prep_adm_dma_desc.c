
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct qcom_nand_controller {int desc_list; int dev; int chan; int cmd_crci; scalar_t__ base_dma; int data_crci; } ;
struct dma_slave_config {int device_fc; int src_maxburst; int dst_maxburst; int slave_id; scalar_t__ dst_addr; scalar_t__ src_addr; } ;
struct dma_async_tx_descriptor {int dummy; } ;
struct desc_info {int node; struct dma_async_tx_descriptor* dma_desc; int dir; struct scatterlist adm_sgl; } ;
typedef int slave_conf ;
typedef enum dma_transfer_direction { ____Placeholder_dma_transfer_direction } dma_transfer_direction ;


 int DMA_DEV_TO_MEM ;
 int DMA_FROM_DEVICE ;
 int DMA_MEM_TO_DEV ;
 int DMA_TO_DEVICE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dev_err (int ,char*) ;
 int dma_map_sg (int ,struct scatterlist*,int,int ) ;
 struct dma_async_tx_descriptor* dmaengine_prep_slave_sg (int ,struct scatterlist*,int,int,int ) ;
 int dmaengine_slave_config (int ,struct dma_slave_config*) ;
 int kfree (struct desc_info*) ;
 struct desc_info* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int memset (struct dma_slave_config*,int,int) ;
 int sg_init_one (struct scatterlist*,void const*,int) ;

__attribute__((used)) static int prep_adm_dma_desc(struct qcom_nand_controller *nandc, bool read,
        int reg_off, const void *vaddr, int size,
        bool flow_control)
{
 struct desc_info *desc;
 struct dma_async_tx_descriptor *dma_desc;
 struct scatterlist *sgl;
 struct dma_slave_config slave_conf;
 enum dma_transfer_direction dir_eng;
 int ret;

 desc = kzalloc(sizeof(*desc), GFP_KERNEL);
 if (!desc)
  return -ENOMEM;

 sgl = &desc->adm_sgl;

 sg_init_one(sgl, vaddr, size);

 if (read) {
  dir_eng = DMA_DEV_TO_MEM;
  desc->dir = DMA_FROM_DEVICE;
 } else {
  dir_eng = DMA_MEM_TO_DEV;
  desc->dir = DMA_TO_DEVICE;
 }

 ret = dma_map_sg(nandc->dev, sgl, 1, desc->dir);
 if (ret == 0) {
  ret = -ENOMEM;
  goto err;
 }

 memset(&slave_conf, 0x00, sizeof(slave_conf));

 slave_conf.device_fc = flow_control;
 if (read) {
  slave_conf.src_maxburst = 16;
  slave_conf.src_addr = nandc->base_dma + reg_off;
  slave_conf.slave_id = nandc->data_crci;
 } else {
  slave_conf.dst_maxburst = 16;
  slave_conf.dst_addr = nandc->base_dma + reg_off;
  slave_conf.slave_id = nandc->cmd_crci;
 }

 ret = dmaengine_slave_config(nandc->chan, &slave_conf);
 if (ret) {
  dev_err(nandc->dev, "failed to configure dma channel\n");
  goto err;
 }

 dma_desc = dmaengine_prep_slave_sg(nandc->chan, sgl, 1, dir_eng, 0);
 if (!dma_desc) {
  dev_err(nandc->dev, "failed to prepare desc\n");
  ret = -EINVAL;
  goto err;
 }

 desc->dma_desc = dma_desc;

 list_add_tail(&desc->node, &nandc->desc_list);

 return 0;
err:
 kfree(desc);

 return ret;
}
