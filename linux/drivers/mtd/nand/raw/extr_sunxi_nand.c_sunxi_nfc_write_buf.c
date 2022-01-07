
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u32 ;
struct sunxi_nfc {scalar_t__ regs; } ;
struct TYPE_2__ {int controller; } ;
struct sunxi_nand_chip {TYPE_1__ nand; } ;
struct nand_chip {int dummy; } ;


 int NFC_ACCESS_DIR ;
 int NFC_CMD_INT_FLAG ;
 int NFC_DATA_SWAP_METHOD ;
 int NFC_DATA_TRANS ;
 scalar_t__ NFC_RAM0_BASE ;
 scalar_t__ NFC_REG_CMD ;
 scalar_t__ NFC_REG_CNT ;
 int NFC_SRAM_SIZE ;
 int memcpy_toio (scalar_t__,int const*,int) ;
 int min (int,int ) ;
 int sunxi_nfc_wait_cmd_fifo_empty (struct sunxi_nfc*) ;
 int sunxi_nfc_wait_events (struct sunxi_nfc*,int ,int,int ) ;
 struct sunxi_nand_chip* to_sunxi_nand (struct nand_chip*) ;
 struct sunxi_nfc* to_sunxi_nfc (int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void sunxi_nfc_write_buf(struct nand_chip *nand, const uint8_t *buf,
    int len)
{
 struct sunxi_nand_chip *sunxi_nand = to_sunxi_nand(nand);
 struct sunxi_nfc *nfc = to_sunxi_nfc(sunxi_nand->nand.controller);
 int ret;
 int cnt;
 int offs = 0;
 u32 tmp;

 while (len > offs) {
  bool poll = 0;

  cnt = min(len - offs, NFC_SRAM_SIZE);

  ret = sunxi_nfc_wait_cmd_fifo_empty(nfc);
  if (ret)
   break;

  writel(cnt, nfc->regs + NFC_REG_CNT);
  memcpy_toio(nfc->regs + NFC_RAM0_BASE, buf + offs, cnt);
  tmp = NFC_DATA_TRANS | NFC_DATA_SWAP_METHOD |
        NFC_ACCESS_DIR;
  writel(tmp, nfc->regs + NFC_REG_CMD);


  if (cnt < 64)
   poll = 1;

  ret = sunxi_nfc_wait_events(nfc, NFC_CMD_INT_FLAG, poll, 0);
  if (ret)
   break;

  offs += cnt;
 }
}
