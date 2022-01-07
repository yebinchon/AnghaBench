
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct nand_chip {int dummy; } ;
struct mtd_info {unsigned int oobsize; } ;
struct TYPE_2__ {int sector_size_1k; } ;
struct brcmnand_host {TYPE_1__ hwcfg; struct brcmnand_controller* ctrl; } ;
struct brcmnand_controller {int soc; } ;


 int CMD_PAGE_READ ;
 int EBADMSG ;
 int EUCLEAN ;
 scalar_t__ FC_BYTES ;
 int FC_WORDS ;
 int brcmnand_clear_ecc_addr (struct brcmnand_controller*) ;
 int brcmnand_get_correcc_addr (struct brcmnand_controller*) ;
 int brcmnand_get_uncorrecc_addr (struct brcmnand_controller*) ;
 int brcmnand_read_fc (struct brcmnand_controller*,int) ;
 int brcmnand_send_cmd (struct brcmnand_host*,int ) ;
 int brcmnand_set_cmd_addr (struct mtd_info*,int ) ;
 int brcmnand_soc_data_bus_prepare (int ,int) ;
 int brcmnand_soc_data_bus_unprepare (int ,int) ;
 int brcmnand_waitfunc (struct nand_chip*) ;
 scalar_t__ likely (int *) ;
 struct brcmnand_host* nand_get_controller_data (struct nand_chip*) ;
 int read_oob_from_regs (struct brcmnand_controller*,int,int *,unsigned int,int ) ;

__attribute__((used)) static int brcmnand_read_by_pio(struct mtd_info *mtd, struct nand_chip *chip,
    u64 addr, unsigned int trans, u32 *buf,
    u8 *oob, u64 *err_addr)
{
 struct brcmnand_host *host = nand_get_controller_data(chip);
 struct brcmnand_controller *ctrl = host->ctrl;
 int i, j, ret = 0;

 brcmnand_clear_ecc_addr(ctrl);

 for (i = 0; i < trans; i++, addr += FC_BYTES) {
  brcmnand_set_cmd_addr(mtd, addr);

  brcmnand_send_cmd(host, CMD_PAGE_READ);
  brcmnand_waitfunc(chip);

  if (likely(buf)) {
   brcmnand_soc_data_bus_prepare(ctrl->soc, 0);

   for (j = 0; j < FC_WORDS; j++, buf++)
    *buf = brcmnand_read_fc(ctrl, j);

   brcmnand_soc_data_bus_unprepare(ctrl->soc, 0);
  }

  if (oob)
   oob += read_oob_from_regs(ctrl, i, oob,
     mtd->oobsize / trans,
     host->hwcfg.sector_size_1k);

  if (!ret) {
   *err_addr = brcmnand_get_uncorrecc_addr(ctrl);

   if (*err_addr)
    ret = -EBADMSG;
  }

  if (!ret) {
   *err_addr = brcmnand_get_correcc_addr(ctrl);

   if (*err_addr)
    ret = -EUCLEAN;
  }
 }

 return ret;
}
