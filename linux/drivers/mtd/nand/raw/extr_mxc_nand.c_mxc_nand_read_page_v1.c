
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct nand_chip {int dummy; } ;
struct mxc_nand_host {int active_cs; int main_area0; TYPE_1__* devtype_data; } ;
struct TYPE_4__ {int failed; int corrected; } ;
struct mtd_info {int writesize; TYPE_2__ ecc_stats; } ;
struct TYPE_3__ {int (* send_cmd ) (struct mxc_nand_host*,int ,int) ;int (* enable_hwecc ) (struct nand_chip*,int) ;} ;


 int NAND_CMD_READ0 ;
 int NAND_CMD_READSTART ;
 int NFC_OUTPUT ;
 int NFC_V1_V2_BUF_ADDR ;
 int NFC_V1_V2_CONFIG2 ;
 int copy_spare (struct mtd_info*,int,void*) ;
 int get_ecc_status_v1 (struct mxc_nand_host*) ;
 int memcpy32_fromio (void*,int ,int) ;
 int mxc_do_addr_cycle (struct mtd_info*,int ,int) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int) ;
 int stub2 (struct mxc_nand_host*,int ,int) ;
 int stub3 (struct mxc_nand_host*,int ,int) ;
 int wait_op_done (struct mxc_nand_host*,int) ;
 int writew (int,int ) ;

__attribute__((used)) static int mxc_nand_read_page_v1(struct nand_chip *chip, void *buf, void *oob,
     bool ecc, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mxc_nand_host *host = nand_get_controller_data(chip);
 unsigned int bitflips_corrected = 0;
 int no_subpages;
 int i;

 host->devtype_data->enable_hwecc(chip, ecc);

 host->devtype_data->send_cmd(host, NAND_CMD_READ0, 0);
 mxc_do_addr_cycle(mtd, 0, page);

 if (mtd->writesize > 512)
  host->devtype_data->send_cmd(host, NAND_CMD_READSTART, 1);

 no_subpages = mtd->writesize >> 9;

 for (i = 0; i < no_subpages; i++) {
  uint16_t ecc_stats;


  writew((host->active_cs << 4) | i, NFC_V1_V2_BUF_ADDR);

  writew(NFC_OUTPUT, NFC_V1_V2_CONFIG2);


  wait_op_done(host, 1);

  ecc_stats = get_ecc_status_v1(host);

  ecc_stats >>= 2;

  if (buf && ecc) {
   switch (ecc_stats & 0x3) {
   case 0:
   default:
    break;
   case 1:
    mtd->ecc_stats.corrected++;
    bitflips_corrected = 1;
    break;
   case 2:
    mtd->ecc_stats.failed++;
    break;
   }
  }
 }

 if (buf)
  memcpy32_fromio(buf, host->main_area0, mtd->writesize);
 if (oob)
  copy_spare(mtd, 1, oob);

 return bitflips_corrected;
}
