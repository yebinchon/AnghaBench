
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;
typedef int u8 ;
struct nand_chip {int dummy; } ;
struct mtd_info {int oobsize; int writesize; } ;
struct mpc5121_nfc_prv {scalar_t__ regs; } ;


 scalar_t__ NFC_SPARE_AREA (int) ;
 int NFC_SPARE_BUFFERS ;
 int memcpy_fromio (int *,scalar_t__,int) ;
 int memcpy_toio (scalar_t__,int *,int) ;
 int min (int,int) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mpc5121_nfc_prv* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static void mpc5121_nfc_copy_spare(struct mtd_info *mtd, uint offset,
      u8 *buffer, uint size, int wr)
{
 struct nand_chip *nand = mtd_to_nand(mtd);
 struct mpc5121_nfc_prv *prv = nand_get_controller_data(nand);
 uint o, s, sbsize, blksize;
 sbsize = (mtd->oobsize / (mtd->writesize / 512)) & ~1;

 while (size) {

  s = offset / sbsize;
  if (s > NFC_SPARE_BUFFERS - 1)
   s = NFC_SPARE_BUFFERS - 1;





  o = offset - (s * sbsize);
  blksize = min(sbsize - o, size);

  if (wr)
   memcpy_toio(prv->regs + NFC_SPARE_AREA(s) + o,
       buffer, blksize);
  else
   memcpy_fromio(buffer,
    prv->regs + NFC_SPARE_AREA(s) + o, blksize);

  buffer += blksize;
  offset += blksize;
  size -= blksize;
 };
}
