
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_chip {int options; } ;
struct mxc_nand_host {TYPE_1__* devtype_data; } ;
struct mtd_info {int writesize; int size; } ;
struct TYPE_2__ {int (* send_addr ) (struct mxc_nand_host*,int,int) ;} ;


 int NAND_ROW_ADDR_3 ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int stub1 (struct mxc_nand_host*,int,int) ;
 int stub2 (struct mxc_nand_host*,int,int) ;
 int stub3 (struct mxc_nand_host*,int,int) ;
 int stub4 (struct mxc_nand_host*,int,int) ;
 int stub5 (struct mxc_nand_host*,int,int) ;
 int stub6 (struct mxc_nand_host*,int,int) ;
 int stub7 (struct mxc_nand_host*,int,int) ;
 int stub8 (struct mxc_nand_host*,int,int) ;
 int stub9 (struct mxc_nand_host*,int,int) ;

__attribute__((used)) static void mxc_do_addr_cycle(struct mtd_info *mtd, int column, int page_addr)
{
 struct nand_chip *nand_chip = mtd_to_nand(mtd);
 struct mxc_nand_host *host = nand_get_controller_data(nand_chip);


 if (column != -1) {
  host->devtype_data->send_addr(host, column & 0xff,
           page_addr == -1);
  if (mtd->writesize > 512)

   host->devtype_data->send_addr(host,
            (column >> 8) & 0xff,
            0);
 }


 if (page_addr != -1) {

  host->devtype_data->send_addr(host, (page_addr & 0xff), 0);

  if (mtd->writesize > 512) {
   if (mtd->size >= 0x10000000) {

    host->devtype_data->send_addr(host,
      (page_addr >> 8) & 0xff,
      0);
    host->devtype_data->send_addr(host,
      (page_addr >> 16) & 0xff,
      1);
   } else

    host->devtype_data->send_addr(host,
      (page_addr >> 8) & 0xff, 1);
  } else {
   if (nand_chip->options & NAND_ROW_ADDR_3) {

    host->devtype_data->send_addr(host,
      (page_addr >> 8) & 0xff,
      0);
    host->devtype_data->send_addr(host,
      (page_addr >> 16) & 0xff,
      1);
   } else

    host->devtype_data->send_addr(host,
      (page_addr >> 8) & 0xff, 1);
  }
 }
}
