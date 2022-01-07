
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct brcmnand_host {struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {TYPE_1__* dma_desc; int dev; int dma_pa; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int status_valid; } ;


 int CMD_PAGE_READ ;
 int DMA_FROM_DEVICE ;
 int DMA_TO_DEVICE ;
 int EBADMSG ;
 int ENOMEM ;
 int EUCLEAN ;
 int FLASH_DMA_CORR_ERROR ;
 int FLASH_DMA_ECC_ERROR ;
 int brcmnand_dma_run (struct brcmnand_host*,int ) ;
 int brcmnand_fill_dma_desc (struct brcmnand_host*,TYPE_1__*,int ,int ,int ,int ,int,int,int ) ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,int *,int ,int) ;
 scalar_t__ dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int ,int) ;

__attribute__((used)) static int brcmnand_dma_trans(struct brcmnand_host *host, u64 addr, u32 *buf,
         u32 len, u8 dma_cmd)
{
 struct brcmnand_controller *ctrl = host->ctrl;
 dma_addr_t buf_pa;
 int dir = dma_cmd == CMD_PAGE_READ ? DMA_FROM_DEVICE : DMA_TO_DEVICE;

 buf_pa = dma_map_single(ctrl->dev, buf, len, dir);
 if (dma_mapping_error(ctrl->dev, buf_pa)) {
  dev_err(ctrl->dev, "unable to map buffer for DMA\n");
  return -ENOMEM;
 }

 brcmnand_fill_dma_desc(host, ctrl->dma_desc, addr, buf_pa, len,
       dma_cmd, 1, 1, 0);

 brcmnand_dma_run(host, ctrl->dma_pa);

 dma_unmap_single(ctrl->dev, buf_pa, len, dir);

 if (ctrl->dma_desc->status_valid & FLASH_DMA_ECC_ERROR)
  return -EBADMSG;
 else if (ctrl->dma_desc->status_valid & FLASH_DMA_CORR_ERROR)
  return -EUCLEAN;

 return 0;
}
