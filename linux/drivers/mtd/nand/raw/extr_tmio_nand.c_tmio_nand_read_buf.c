
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct tmio_nand {scalar_t__ fcr; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ FCR_DATA ;
 struct tmio_nand* mtd_to_tmio (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 int tmio_ioread16_rep (scalar_t__,int *,int) ;

__attribute__((used)) static void tmio_nand_read_buf(struct nand_chip *chip, u_char *buf, int len)
{
 struct tmio_nand *tmio = mtd_to_tmio(nand_to_mtd(chip));

 tmio_ioread16_rep(tmio->fcr + FCR_DATA, buf, len >> 1);
}
