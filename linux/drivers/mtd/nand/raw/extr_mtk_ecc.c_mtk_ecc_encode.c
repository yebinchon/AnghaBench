
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct mtk_ecc_config {int strength; int addr; int op; } ;
struct mtk_ecc {int dev; int eccdata; TYPE_1__* caps; scalar_t__ regs; } ;
typedef int dma_addr_t ;
struct TYPE_2__ {int parity_bits; scalar_t__* ecc_regs; } ;


 int DMA_TO_DEVICE ;
 int ECC_ENCODE ;
 size_t ECC_ENCPAR00 ;
 int EINVAL ;
 int __ioread32_copy (int ,scalar_t__,int ) ;
 int dev_err (int ,char*) ;
 int dma_map_single (int ,int *,int,int ) ;
 int dma_mapping_error (int ,int ) ;
 int dma_unmap_single (int ,int ,int,int ) ;
 int memcpy (int *,int ,int) ;
 int mtk_ecc_disable (struct mtk_ecc*) ;
 int mtk_ecc_enable (struct mtk_ecc*,struct mtk_ecc_config*) ;
 int mtk_ecc_wait_done (struct mtk_ecc*,int ) ;
 int mtk_ecc_wait_idle (struct mtk_ecc*,int ) ;
 int round_up (int,int) ;

int mtk_ecc_encode(struct mtk_ecc *ecc, struct mtk_ecc_config *config,
     u8 *data, u32 bytes)
{
 dma_addr_t addr;
 u32 len;
 int ret;

 addr = dma_map_single(ecc->dev, data, bytes, DMA_TO_DEVICE);
 ret = dma_mapping_error(ecc->dev, addr);
 if (ret) {
  dev_err(ecc->dev, "dma mapping error\n");
  return -EINVAL;
 }

 config->op = ECC_ENCODE;
 config->addr = addr;
 ret = mtk_ecc_enable(ecc, config);
 if (ret) {
  dma_unmap_single(ecc->dev, addr, bytes, DMA_TO_DEVICE);
  return ret;
 }

 ret = mtk_ecc_wait_done(ecc, ECC_ENCODE);
 if (ret)
  goto timeout;

 mtk_ecc_wait_idle(ecc, ECC_ENCODE);


 len = (config->strength * ecc->caps->parity_bits + 7) >> 3;


 __ioread32_copy(ecc->eccdata,
   ecc->regs + ecc->caps->ecc_regs[ECC_ENCPAR00],
   round_up(len, 4));


 memcpy(data + bytes, ecc->eccdata, len);
timeout:

 dma_unmap_single(ecc->dev, addr, bytes, DMA_TO_DEVICE);
 mtk_ecc_disable(ecc);

 return ret;
}
