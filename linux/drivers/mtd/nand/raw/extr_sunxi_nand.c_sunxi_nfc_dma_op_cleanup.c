
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_nfc {scalar_t__ regs; int dev; } ;
struct scatterlist {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int NFC_RAM_METHOD ;
 scalar_t__ NFC_REG_CTL ;
 int dma_unmap_sg (int ,struct scatterlist*,int,int) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sunxi_nfc_dma_op_cleanup(struct sunxi_nfc *nfc,
         enum dma_data_direction ddir,
         struct scatterlist *sg)
{
 dma_unmap_sg(nfc->dev, sg, 1, ddir);
 writel(readl(nfc->regs + NFC_REG_CTL) & ~NFC_RAM_METHOD,
        nfc->regs + NFC_REG_CTL);
}
