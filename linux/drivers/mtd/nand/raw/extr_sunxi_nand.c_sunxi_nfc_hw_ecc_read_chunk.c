
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct nand_ecc_ctrl {int size; int bytes; int strength; } ;
struct nand_chip {int options; struct nand_ecc_ctrl ecc; int controller; } ;


 int NAND_NEED_SCRAMBLING ;
 int NFC_CMD_INT_FLAG ;
 int NFC_DATA_SWAP_METHOD ;
 int NFC_DATA_TRANS ;
 int NFC_ECC_OP ;
 scalar_t__ NFC_RAM0_BASE ;
 scalar_t__ NFC_REG_CMD ;
 scalar_t__ NFC_REG_ECC_ST ;
 int memcpy_fromio (int *,scalar_t__,int) ;
 int nand_change_read_column_op (struct nand_chip*,int,int *,int,int) ;
 int nand_check_erased_ecc_chunk (int *,int,int *,int,int *,int ,int ) ;
 int readl (scalar_t__) ;
 int sunxi_nfc_hw_ecc_correct (struct nand_chip*,int *,int *,int ,int ,int*) ;
 int sunxi_nfc_hw_ecc_get_prot_oob_bytes (struct nand_chip*,int *,int ,int,int) ;
 int sunxi_nfc_hw_ecc_update_stats (struct nand_chip*,unsigned int*,int) ;
 int sunxi_nfc_randomizer_disable (struct nand_chip*) ;
 int sunxi_nfc_randomizer_enable (struct nand_chip*) ;
 int sunxi_nfc_randomizer_read_buf (struct nand_chip*,int *,int,int,int) ;
 int sunxi_nfc_wait_cmd_fifo_empty (struct sunxi_nfc*) ;
 int sunxi_nfc_wait_events (struct sunxi_nfc*,int ,int,int ) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int sunxi_nfc_hw_ecc_read_chunk(struct nand_chip *nand,
           u8 *data, int data_off,
           u8 *oob, int oob_off,
           int *cur_off,
           unsigned int *max_bitflips,
           bool bbm, bool oob_required, int page)
{
 struct sunxi_nfc *nfc = to_sunxi_nfc(nand->controller);
 struct nand_ecc_ctrl *ecc = &nand->ecc;
 int raw_mode = 0;
 bool erased;
 int ret;

 if (*cur_off != data_off)
  nand_change_read_column_op(nand, data_off, ((void*)0), 0, 0);

 sunxi_nfc_randomizer_read_buf(nand, ((void*)0), ecc->size, 0, page);

 if (data_off + ecc->size != oob_off)
  nand_change_read_column_op(nand, oob_off, ((void*)0), 0, 0);

 ret = sunxi_nfc_wait_cmd_fifo_empty(nfc);
 if (ret)
  return ret;

 sunxi_nfc_randomizer_enable(nand);
 writel(NFC_DATA_TRANS | NFC_DATA_SWAP_METHOD | NFC_ECC_OP,
        nfc->regs + NFC_REG_CMD);

 ret = sunxi_nfc_wait_events(nfc, NFC_CMD_INT_FLAG, 0, 0);
 sunxi_nfc_randomizer_disable(nand);
 if (ret)
  return ret;

 *cur_off = oob_off + ecc->bytes + 4;

 ret = sunxi_nfc_hw_ecc_correct(nand, data, oob_required ? oob : ((void*)0), 0,
           readl(nfc->regs + NFC_REG_ECC_ST),
           &erased);
 if (erased)
  return 1;

 if (ret < 0) {




  if (nand->options & NAND_NEED_SCRAMBLING)
   nand_change_read_column_op(nand, data_off, data,
         ecc->size, 0);
  else
   memcpy_fromio(data, nfc->regs + NFC_RAM0_BASE,
          ecc->size);

  nand_change_read_column_op(nand, oob_off, oob, ecc->bytes + 4,
        0);

  ret = nand_check_erased_ecc_chunk(data, ecc->size,
        oob, ecc->bytes + 4,
        ((void*)0), 0, ecc->strength);
  if (ret >= 0)
   raw_mode = 1;
 } else {
  memcpy_fromio(data, nfc->regs + NFC_RAM0_BASE, ecc->size);

  if (oob_required) {
   nand_change_read_column_op(nand, oob_off, ((void*)0), 0,
         0);
   sunxi_nfc_randomizer_read_buf(nand, oob, ecc->bytes + 4,
            1, page);

   sunxi_nfc_hw_ecc_get_prot_oob_bytes(nand, oob, 0,
           bbm, page);
  }
 }

 sunxi_nfc_hw_ecc_update_stats(nand, max_bitflips, ret);

 return raw_mode;
}
