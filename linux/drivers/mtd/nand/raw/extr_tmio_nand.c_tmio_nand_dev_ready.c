
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmio_nand {scalar_t__ fcr; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ FCR_STATUS ;
 int FCR_STATUS_BUSY ;
 struct tmio_nand* mtd_to_tmio (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 int tmio_ioread8 (scalar_t__) ;

__attribute__((used)) static int tmio_nand_dev_ready(struct nand_chip *chip)
{
 struct tmio_nand *tmio = mtd_to_tmio(nand_to_mtd(chip));

 return !(tmio_ioread8(tmio->fcr + FCR_STATUS) & FCR_STATUS_BUSY);
}
