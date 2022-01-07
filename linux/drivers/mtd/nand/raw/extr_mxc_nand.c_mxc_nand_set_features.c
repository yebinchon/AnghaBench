
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int (* write_byte ) (struct nand_chip*,int ) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
struct mxc_nand_host {TYPE_2__* devtype_data; int data_buf; int main_area0; scalar_t__ buf_start; } ;
struct mtd_info {int writesize; } ;
struct TYPE_4__ {int (* send_page ) (struct mtd_info*,int ) ;int (* send_cmd ) (struct mxc_nand_host*,int ,int) ;} ;


 int NAND_CMD_SET_FEATURES ;
 int NFC_INPUT ;
 int ONFI_SUBFEATURE_PARAM_LEN ;
 int memcpy32_toio (int ,int ,int ) ;
 int mxc_do_addr_cycle (struct mtd_info*,int,int) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct nand_chip*,int ) ;
 int stub2 (struct mxc_nand_host*,int ,int) ;
 int stub3 (struct mtd_info*,int ) ;

__attribute__((used)) static int mxc_nand_set_features(struct nand_chip *chip, int addr,
     u8 *subfeature_param)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mxc_nand_host *host = nand_get_controller_data(chip);
 int i;

 host->buf_start = 0;

 for (i = 0; i < ONFI_SUBFEATURE_PARAM_LEN; ++i)
  chip->legacy.write_byte(chip, subfeature_param[i]);

 memcpy32_toio(host->main_area0, host->data_buf, mtd->writesize);
 host->devtype_data->send_cmd(host, NAND_CMD_SET_FEATURES, 0);
 mxc_do_addr_cycle(mtd, addr, -1);
 host->devtype_data->send_page(mtd, NFC_INPUT);

 return 0;
}
