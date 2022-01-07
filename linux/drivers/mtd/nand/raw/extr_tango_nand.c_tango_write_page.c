
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tango_nfc {scalar_t__ mem_base; } ;
struct TYPE_2__ {int (* waitfunc ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_1__ legacy; int controller; } ;
struct mtd_info {int writesize; } ;


 int DMA_TO_DEVICE ;
 int EIO ;
 int ENOTSUPP ;
 scalar_t__ METADATA ;
 int NAND_STATUS_FAIL ;
 int NFC_WRITE ;
 int do_dma (struct tango_nfc*,int ,int ,int const*,int,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*) ;
 struct tango_nfc* to_tango_nfc (int ) ;
 int writel_relaxed (int,scalar_t__) ;

__attribute__((used)) static int tango_write_page(struct nand_chip *chip, const u8 *buf,
       int oob_required, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct tango_nfc *nfc = to_tango_nfc(chip->controller);
 int err, status, len = mtd->writesize;


 if (oob_required)
  return -ENOTSUPP;

 writel_relaxed(0xffffffff, nfc->mem_base + METADATA);
 err = do_dma(nfc, DMA_TO_DEVICE, NFC_WRITE, buf, len, page);
 if (err)
  return err;

 status = chip->legacy.waitfunc(chip);
 if (status & NAND_STATUS_FAIL)
  return -EIO;

 return 0;
}
