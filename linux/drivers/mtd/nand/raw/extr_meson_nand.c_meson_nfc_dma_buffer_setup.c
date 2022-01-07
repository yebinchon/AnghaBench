
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nand_chip {int dummy; } ;
struct meson_nfc {scalar_t__ reg_base; void* iaddr; void* daddr; int dev; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int GENCMDDADDRH (int ,void*) ;
 int GENCMDDADDRL (int ,void*) ;
 int GENCMDIADDRH (int ,void*) ;
 int GENCMDIADDRL (int ,void*) ;
 int NFC_CMD_ADH ;
 int NFC_CMD_ADL ;
 int NFC_CMD_AIH ;
 int NFC_CMD_AIL ;
 scalar_t__ NFC_REG_CMD ;
 int dev_err (int ,char*) ;
 void* dma_map_single (int ,void*,int,int) ;
 int dma_mapping_error (int ,void*) ;
 int dma_unmap_single (int ,void*,int,int) ;
 struct meson_nfc* nand_get_controller_data (struct nand_chip*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int meson_nfc_dma_buffer_setup(struct nand_chip *nand, void *databuf,
          int datalen, void *infobuf, int infolen,
          enum dma_data_direction dir)
{
 struct meson_nfc *nfc = nand_get_controller_data(nand);
 u32 cmd;
 int ret = 0;

 nfc->daddr = dma_map_single(nfc->dev, databuf, datalen, dir);
 ret = dma_mapping_error(nfc->dev, nfc->daddr);
 if (ret) {
  dev_err(nfc->dev, "DMA mapping error\n");
  return ret;
 }
 cmd = GENCMDDADDRL(NFC_CMD_ADL, nfc->daddr);
 writel(cmd, nfc->reg_base + NFC_REG_CMD);

 cmd = GENCMDDADDRH(NFC_CMD_ADH, nfc->daddr);
 writel(cmd, nfc->reg_base + NFC_REG_CMD);

 if (infobuf) {
  nfc->iaddr = dma_map_single(nfc->dev, infobuf, infolen, dir);
  ret = dma_mapping_error(nfc->dev, nfc->iaddr);
  if (ret) {
   dev_err(nfc->dev, "DMA mapping error\n");
   dma_unmap_single(nfc->dev,
      nfc->daddr, datalen, dir);
   return ret;
  }
  cmd = GENCMDIADDRL(NFC_CMD_AIL, nfc->iaddr);
  writel(cmd, nfc->reg_base + NFC_REG_CMD);

  cmd = GENCMDIADDRH(NFC_CMD_AIH, nfc->iaddr);
  writel(cmd, nfc->reg_base + NFC_REG_CMD);
 }

 return ret;
}
