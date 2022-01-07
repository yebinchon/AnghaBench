
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int dummy; } ;
struct mxc_nand_host {int status_request; int buf_start; int main_area0; int data_buf; TYPE_1__* devtype_data; int dev; } ;
struct mtd_info {int dummy; } ;
struct TYPE_2__ {int (* send_page ) (struct mtd_info*,int ) ;int (* send_cmd ) (struct mxc_nand_host*,unsigned int,int) ;int (* send_read_id ) (struct mxc_nand_host*) ;int (* preset ) (struct mtd_info*) ;} ;
 int NFC_OUTPUT ;
 int WARN_ONCE (int,char*,unsigned int,...) ;
 int dev_dbg (int ,char*,unsigned int,int,int) ;
 int memcpy32_fromio (int ,int ,int) ;
 int mxc_do_addr_cycle (struct mtd_info*,int,int) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int stub1 (struct mtd_info*) ;
 int stub2 (struct mxc_nand_host*,unsigned int,int) ;
 int stub3 (struct mxc_nand_host*,unsigned int,int) ;
 int stub4 (struct mxc_nand_host*,unsigned int,int) ;
 int stub5 (struct mxc_nand_host*) ;
 int stub6 (struct mxc_nand_host*,unsigned int,int) ;
 int stub7 (struct mxc_nand_host*,unsigned int,int) ;
 int stub8 (struct mtd_info*,int ) ;

__attribute__((used)) static void mxc_nand_command(struct nand_chip *nand_chip, unsigned command,
        int column, int page_addr)
{
 struct mtd_info *mtd = nand_to_mtd(nand_chip);
 struct mxc_nand_host *host = nand_get_controller_data(nand_chip);

 dev_dbg(host->dev, "mxc_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
       command, column, page_addr);


 host->status_request = 0;


 switch (command) {
 case 129:
  host->devtype_data->preset(mtd);
  host->devtype_data->send_cmd(host, command, 0);
  break;

 case 128:
  host->buf_start = 0;
  host->status_request = 1;

  host->devtype_data->send_cmd(host, command, 1);
  WARN_ONCE(column != -1 || page_addr != -1,
     "Unexpected column/row value (cmd=%u, col=%d, row=%d)\n",
     command, column, page_addr);
  mxc_do_addr_cycle(mtd, column, page_addr);
  break;

 case 130:
  host->devtype_data->send_cmd(host, command, 1);
  mxc_do_addr_cycle(mtd, column, page_addr);
  host->devtype_data->send_read_id(host);
  host->buf_start = 0;
  break;

 case 133:
 case 132:
  host->devtype_data->send_cmd(host, command, 0);
  WARN_ONCE(column != -1,
     "Unexpected column value (cmd=%u, col=%d)\n",
     command, column);
  mxc_do_addr_cycle(mtd, column, page_addr);

  break;
 case 131:
  host->devtype_data->send_cmd(host, command, 0);
  mxc_do_addr_cycle(mtd, column, page_addr);
  host->devtype_data->send_page(mtd, NFC_OUTPUT);
  memcpy32_fromio(host->data_buf, host->main_area0, 512);
  host->buf_start = 0;
  break;
 default:
  WARN_ONCE(1, "Unimplemented command (cmd=%u)\n",
     command);
  break;
 }
}
