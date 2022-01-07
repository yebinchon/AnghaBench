
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_char ;
struct tmio_nand {scalar_t__ fcr; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ FCR_DATA ;
 scalar_t__ FCR_MODE ;
 int FCR_MODE_DATA ;
 int FCR_MODE_HWECC_RESULT ;
 struct tmio_nand* mtd_to_tmio (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 unsigned int tmio_ioread16 (scalar_t__) ;
 int tmio_iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static int tmio_nand_calculate_ecc(struct nand_chip *chip, const u_char *dat,
       u_char *ecc_code)
{
 struct tmio_nand *tmio = mtd_to_tmio(nand_to_mtd(chip));
 unsigned int ecc;

 tmio_iowrite8(FCR_MODE_HWECC_RESULT, tmio->fcr + FCR_MODE);

 ecc = tmio_ioread16(tmio->fcr + FCR_DATA);
 ecc_code[1] = ecc;
 ecc_code[0] = ecc >> 8;
 ecc = tmio_ioread16(tmio->fcr + FCR_DATA);
 ecc_code[2] = ecc;
 ecc_code[4] = ecc >> 8;
 ecc = tmio_ioread16(tmio->fcr + FCR_DATA);
 ecc_code[3] = ecc;
 ecc_code[5] = ecc >> 8;

 tmio_iowrite8(FCR_MODE_DATA, tmio->fcr + FCR_MODE);
 return 0;
}
