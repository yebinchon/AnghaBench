
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int (* read_byte ) (struct nand_chip*) ;} ;
struct nand_chip {TYPE_1__ legacy; } ;
struct mxc_nand_host {scalar_t__ buf_start; int main_area0; int data_buf; TYPE_2__* devtype_data; } ;
struct mtd_info {int dummy; } ;
struct TYPE_4__ {int (* send_page ) (struct mtd_info*,int ) ;int (* send_cmd ) (struct mxc_nand_host*,int ,int) ;} ;


 int NAND_CMD_GET_FEATURES ;
 int NFC_OUTPUT ;
 int ONFI_SUBFEATURE_PARAM_LEN ;
 int memcpy32_fromio (int ,int ,int) ;
 int mxc_do_addr_cycle (struct mtd_info*,int,int) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct mxc_nand_host*,int ,int) ;
 int stub2 (struct mtd_info*,int ) ;
 int stub3 (struct nand_chip*) ;

__attribute__((used)) static int mxc_nand_get_features(struct nand_chip *chip, int addr,
     u8 *subfeature_param)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mxc_nand_host *host = nand_get_controller_data(chip);
 int i;

 host->devtype_data->send_cmd(host, NAND_CMD_GET_FEATURES, 0);
 mxc_do_addr_cycle(mtd, addr, -1);
 host->devtype_data->send_page(mtd, NFC_OUTPUT);
 memcpy32_fromio(host->data_buf, host->main_area0, 512);
 host->buf_start = 0;

 for (i = 0; i < ONFI_SUBFEATURE_PARAM_LEN; ++i)
  *subfeature_param++ = chip->legacy.read_byte(chip);

 return 0;
}
