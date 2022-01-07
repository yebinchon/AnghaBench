
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct nand_chip {int dummy; } ;
struct mtd_info {int oobsize; } ;


 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int omap_nand_dma_transfer (struct mtd_info*,int *,int,int) ;
 int omap_read_buf_pref (struct nand_chip*,int *,int) ;

__attribute__((used)) static void omap_read_buf_dma_pref(struct nand_chip *chip, u_char *buf,
       int len)
{
 struct mtd_info *mtd = nand_to_mtd(chip);

 if (len <= mtd->oobsize)
  omap_read_buf_pref(chip, buf, len);
 else

  omap_nand_dma_transfer(mtd, buf, len, 0x0);
}
