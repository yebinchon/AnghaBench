
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_ecc_ctrl {scalar_t__ bytes; scalar_t__ size; } ;
struct nand_chip {struct nand_ecc_ctrl ecc; int controller; } ;


 int EBADMSG ;
 int NFC_ECC_ERR (int) ;
 int NFC_ECC_ERR_CNT (int,int) ;
 int NFC_ECC_PAT_FOUND (int) ;
 scalar_t__ NFC_REG_ECC_ERR_CNT (int) ;
 scalar_t__ NFC_REG_PAT_ID ;
 int memset (int*,int,scalar_t__) ;
 int readl (scalar_t__) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sunxi_nfc_hw_ecc_correct(struct nand_chip *nand, u8 *data, u8 *oob,
        int step, u32 status, bool *erased)
{
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 struct nand_ecc_ctrl *ecc = &nand->ecc;
 u32 tmp;

 *erased = 0;

 if (status & NFC_ECC_ERR(step))
  return -EBADMSG;

 if (status & NFC_ECC_PAT_FOUND(step)) {
  u8 pattern;

  if (unlikely(!(readl(nfc->regs + NFC_REG_PAT_ID) & 0x1))) {
   pattern = 0x0;
  } else {
   pattern = 0xff;
   *erased = 1;
  }

  if (data)
   memset(data, pattern, ecc->size);

  if (oob)
   memset(oob, pattern, ecc->bytes + 4);

  return 0;
 }

 tmp = readl(nfc->regs + NFC_REG_ECC_ERR_CNT(step));

 return NFC_ECC_ERR_CNT(step, tmp);
}
