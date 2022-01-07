
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct TYPE_10__ {int chip_delay; int dev_ready; int cmd_ctrl; int select_chip; } ;
struct nand_chip {TYPE_2__ legacy; } ;
struct TYPE_11__ {int mode; } ;
struct TYPE_9__ {void* get_features; void* set_features; int write_buf; int read_buf; int read_byte; int cmdfunc; } ;
struct TYPE_12__ {int page_shift; int base; TYPE_3__ ecc; int bbt_options; TYPE_1__ legacy; } ;
struct bcm47xxnflash {TYPE_5__* cc; TYPE_4__ nand_chip; } ;
struct TYPE_13__ {int status; } ;


 int BCMA_CC_4706_FLASHSCFG ;
 int BCMA_CC_4706_FLASHSCFG_NF1 ;
 int BCMA_CC_CHIPST_4706_PKG_OPTION ;
 int BCMA_CC_NFLASH_CONF ;
 int BCMA_CC_NFLASH_WAITCNT0 ;
 int ENOTSUPP ;
 int NAND_BBT_USE_FLASH ;
 int NAND_ECC_NONE ;
 int bcm47xxnflash_ops_bcm4706_cmd_ctrl ;
 int bcm47xxnflash_ops_bcm4706_cmdfunc ;
 int bcm47xxnflash_ops_bcm4706_dev_ready ;
 int bcm47xxnflash_ops_bcm4706_ns_to_cycle (int,int) ;
 int bcm47xxnflash_ops_bcm4706_read_buf ;
 int bcm47xxnflash_ops_bcm4706_read_byte ;
 int bcm47xxnflash_ops_bcm4706_select_chip ;
 int bcm47xxnflash_ops_bcm4706_write_buf ;
 int bcma_cc_mask32 (TYPE_5__*,int ,int ) ;
 int bcma_cc_set32 (TYPE_5__*,int ,int ) ;
 int bcma_cc_write32 (TYPE_5__*,int ,int) ;
 int bcma_chipco_pll_read (TYPE_5__*,int) ;
 int ffs (unsigned long) ;
 int fls (unsigned long) ;
 void* nand_get_set_features_notsupp ;
 int nand_scan (TYPE_4__*,int) ;
 int nanddev_target_size (int *) ;
 int pr_err (char*,unsigned long) ;

int bcm47xxnflash_ops_bcm4706_init(struct bcm47xxnflash *b47n)
{
 struct nand_chip *nand_chip = (struct nand_chip *)&b47n->nand_chip;
 int err;
 u32 freq;
 u16 clock;
 u8 w0, w1, w2, w3, w4;

 unsigned long chipsize;
 u8 tbits, col_bits, col_size, row_bits, row_bsize;
 u32 val;

 nand_chip->legacy.select_chip = bcm47xxnflash_ops_bcm4706_select_chip;
 nand_chip->legacy.cmd_ctrl = bcm47xxnflash_ops_bcm4706_cmd_ctrl;
 nand_chip->legacy.dev_ready = bcm47xxnflash_ops_bcm4706_dev_ready;
 b47n->nand_chip.legacy.cmdfunc = bcm47xxnflash_ops_bcm4706_cmdfunc;
 b47n->nand_chip.legacy.read_byte = bcm47xxnflash_ops_bcm4706_read_byte;
 b47n->nand_chip.legacy.read_buf = bcm47xxnflash_ops_bcm4706_read_buf;
 b47n->nand_chip.legacy.write_buf = bcm47xxnflash_ops_bcm4706_write_buf;
 b47n->nand_chip.legacy.set_features = nand_get_set_features_notsupp;
 b47n->nand_chip.legacy.get_features = nand_get_set_features_notsupp;

 nand_chip->legacy.chip_delay = 50;
 b47n->nand_chip.bbt_options = NAND_BBT_USE_FLASH;
 b47n->nand_chip.ecc.mode = NAND_ECC_NONE;


 bcma_cc_set32(b47n->cc, BCMA_CC_4706_FLASHSCFG,
        BCMA_CC_4706_FLASHSCFG_NF1);


 if (b47n->cc->status & BCMA_CC_CHIPST_4706_PKG_OPTION) {

  freq = 400000000 / 4;
 } else {
  freq = bcma_chipco_pll_read(b47n->cc, 4);
  freq = (freq & 0xFFF) >> 3;

  freq = (freq * 25000000 / 2) / 4;
 }
 clock = freq / 1000000;
 w0 = bcm47xxnflash_ops_bcm4706_ns_to_cycle(15, clock);
 w1 = bcm47xxnflash_ops_bcm4706_ns_to_cycle(20, clock);
 w2 = bcm47xxnflash_ops_bcm4706_ns_to_cycle(10, clock);
 w3 = bcm47xxnflash_ops_bcm4706_ns_to_cycle(10, clock);
 w4 = bcm47xxnflash_ops_bcm4706_ns_to_cycle(100, clock);
 bcma_cc_write32(b47n->cc, BCMA_CC_NFLASH_WAITCNT0,
   (w4 << 24 | w3 << 18 | w2 << 12 | w1 << 6 | w0));


 err = nand_scan(&b47n->nand_chip, 1);
 if (err) {
  pr_err("Could not scan NAND flash: %d\n", err);
  goto exit;
 }


 chipsize = nanddev_target_size(&b47n->nand_chip.base) >> 20;
 tbits = ffs(chipsize);
 if (!tbits || tbits != fls(chipsize)) {
  pr_err("Invalid flash size: 0x%lX\n", chipsize);
  err = -ENOTSUPP;
  goto exit;
 }
 tbits += 19;

 col_bits = b47n->nand_chip.page_shift + 1;
 col_size = (col_bits + 7) / 8;

 row_bits = tbits - col_bits + 1;
 row_bsize = (row_bits + 7) / 8;

 val = ((row_bsize - 1) << 6) | ((col_size - 1) << 4) | 2;
 bcma_cc_write32(b47n->cc, BCMA_CC_NFLASH_CONF, val);

exit:
 if (err)
  bcma_cc_mask32(b47n->cc, BCMA_CC_4706_FLASHSCFG,
          ~BCMA_CC_4706_FLASHSCFG_NF1);
 return err;
}
