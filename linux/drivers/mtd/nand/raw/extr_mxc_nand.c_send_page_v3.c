
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nand_chip {int dummy; } ;
struct mxc_nand_host {int dummy; } ;
struct mtd_info {int dummy; } ;


 int NFC_V3_CONFIG1 ;
 int NFC_V3_LAUNCH ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mxc_nand_host* nand_get_controller_data (struct nand_chip*) ;
 int readl (int ) ;
 int wait_op_done (struct mxc_nand_host*,int) ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static void send_page_v3(struct mtd_info *mtd, unsigned int ops)
{
 struct nand_chip *nand_chip = mtd_to_nand(mtd);
 struct mxc_nand_host *host = nand_get_controller_data(nand_chip);
 uint32_t tmp;

 tmp = readl(NFC_V3_CONFIG1);
 tmp &= ~(7 << 4);
 writel(tmp, NFC_V3_CONFIG1);


 writel(ops, NFC_V3_LAUNCH);

 wait_op_done(host, 0);
}
