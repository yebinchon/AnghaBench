
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int steps; } ;
struct nand_chip {TYPE_1__ ecc; int cur_cs; } ;


 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 int sunxi_nfc_hw_ecc_read_chunks_dma (struct nand_chip*,int *,int,int,int ) ;
 int sunxi_nfc_hw_ecc_read_page (struct nand_chip*,int *,int,int) ;
 int sunxi_nfc_select_chip (struct nand_chip*,int ) ;

__attribute__((used)) static int sunxi_nfc_hw_ecc_read_page_dma(struct nand_chip *nand, u8 *buf,
       int oob_required, int page)
{
 int ret;

 sunxi_nfc_select_chip(nand, nand->cur_cs);

 nand_read_page_op(nand, page, 0, ((void*)0), 0);

 ret = sunxi_nfc_hw_ecc_read_chunks_dma(nand, buf, oob_required, page,
            nand->ecc.steps);
 if (ret >= 0)
  return ret;


 return sunxi_nfc_hw_ecc_read_page(nand, buf, oob_required, page);
}
