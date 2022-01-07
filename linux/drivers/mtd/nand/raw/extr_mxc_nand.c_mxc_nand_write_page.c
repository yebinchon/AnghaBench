
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct nand_chip {int oob_poi; } ;
struct mxc_nand_host {TYPE_1__* devtype_data; int main_area0; } ;
struct mtd_info {int writesize; } ;
struct TYPE_2__ {int (* send_cmd ) (struct mxc_nand_host*,int ,int) ;int (* send_page ) (struct mtd_info*,int ) ;int (* enable_hwecc ) (struct nand_chip*,int) ;} ;


 int NAND_CMD_PAGEPROG ;
 int NAND_CMD_SEQIN ;
 int NFC_INPUT ;
 int copy_spare (struct mtd_info*,int,int ) ;
 int memcpy32_toio (int ,int const*,int ) ;
 int mxc_do_addr_cycle (struct mtd_info*,int ,int) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int) ;
 int stub2 (struct mxc_nand_host*,int ,int) ;
 int stub3 (struct mtd_info*,int ) ;
 int stub4 (struct mxc_nand_host*,int ,int) ;

__attribute__((used)) static int mxc_nand_write_page(struct nand_chip *chip, const uint8_t *buf,
          bool ecc, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mxc_nand_host *host = nand_get_controller_data(chip);

 host->devtype_data->enable_hwecc(chip, ecc);

 host->devtype_data->send_cmd(host, NAND_CMD_SEQIN, 0);
 mxc_do_addr_cycle(mtd, 0, page);

 memcpy32_toio(host->main_area0, buf, mtd->writesize);
 copy_spare(mtd, 0, chip->oob_poi);

 host->devtype_data->send_page(mtd, NFC_INPUT);
 host->devtype_data->send_cmd(host, NAND_CMD_PAGEPROG, 1);
 mxc_do_addr_cycle(mtd, 0, page);

 return 0;
}
