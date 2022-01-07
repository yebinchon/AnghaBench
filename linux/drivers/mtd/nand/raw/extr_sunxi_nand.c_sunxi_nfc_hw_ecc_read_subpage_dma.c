
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int size; } ;
struct nand_chip {int cur_cs; TYPE_1__ ecc; } ;


 int DIV_ROUND_UP (scalar_t__,int ) ;
 int nand_read_page_op (struct nand_chip*,int,int ,int *,int ) ;
 int sunxi_nfc_hw_ecc_read_chunks_dma (struct nand_chip*,int *,int,int,int) ;
 int sunxi_nfc_hw_ecc_read_subpage (struct nand_chip*,scalar_t__,scalar_t__,int *,int) ;
 int sunxi_nfc_select_chip (struct nand_chip*,int ) ;

__attribute__((used)) static int sunxi_nfc_hw_ecc_read_subpage_dma(struct nand_chip *nand,
          u32 data_offs, u32 readlen,
          u8 *buf, int page)
{
 int nchunks = DIV_ROUND_UP(data_offs + readlen, nand->ecc.size);
 int ret;

 sunxi_nfc_select_chip(nand, nand->cur_cs);

 nand_read_page_op(nand, page, 0, ((void*)0), 0);

 ret = sunxi_nfc_hw_ecc_read_chunks_dma(nand, buf, 0, page, nchunks);
 if (ret >= 0)
  return ret;


 return sunxi_nfc_hw_ecc_read_subpage(nand, data_offs, readlen,
          buf, page);
}
