
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct meson_nfc {int iaddr; int dev; int daddr; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int dma_unmap_single (int ,int ,int,int) ;
 struct meson_nfc* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static void meson_nfc_dma_buffer_release(struct nand_chip *nand,
      int infolen, int datalen,
      enum dma_data_direction dir)
{
 struct meson_nfc *nfc = nand_get_controller_data(nand);

 dma_unmap_single(nfc->dev, nfc->daddr, datalen, dir);
 if (infolen)
  dma_unmap_single(nfc->dev, nfc->iaddr, infolen, dir);
}
