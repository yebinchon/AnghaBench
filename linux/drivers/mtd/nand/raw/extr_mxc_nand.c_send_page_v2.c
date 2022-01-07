
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mxc_nand_host {int active_cs; } ;
struct mtd_info {int dummy; } ;


 int NFC_V1_V2_BUF_ADDR ;
 int NFC_V1_V2_CONFIG2 ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int wait_op_done (struct mxc_nand_host*,int) ;
 int writew (unsigned int,int ) ;

__attribute__((used)) static void send_page_v2(struct mtd_info *mtd, unsigned int ops)
{
 struct nand_chip *nand_chip = mtd_to_nand(mtd);
 struct mxc_nand_host *host = nand_get_controller_data(nand_chip);


 writew(host->active_cs << 4, NFC_V1_V2_BUF_ADDR);

 writew(ops, NFC_V1_V2_CONFIG2);


 wait_op_done(host, 1);
}
