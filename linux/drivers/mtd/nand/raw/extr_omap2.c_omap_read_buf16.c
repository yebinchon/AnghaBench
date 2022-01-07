
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int IO_ADDR_R; } ;
struct nand_chip {TYPE_1__ legacy; } ;
struct mtd_info {int dummy; } ;


 int ioread16_rep (int ,int *,int) ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;

__attribute__((used)) static void omap_read_buf16(struct mtd_info *mtd, u_char *buf, int len)
{
 struct nand_chip *nand = mtd_to_nand(mtd);

 ioread16_rep(nand->legacy.IO_ADDR_R, buf, len / 2);
}
