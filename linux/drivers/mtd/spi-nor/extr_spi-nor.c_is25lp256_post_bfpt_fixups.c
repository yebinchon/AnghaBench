
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor_flash_parameter {int dummy; } ;
struct spi_nor {int addr_width; } ;
struct sfdp_parameter_header {int dummy; } ;
struct sfdp_bfpt {int* dwords; } ;


 size_t BFPT_DWORD (int) ;
 int BFPT_DWORD1_ADDRESS_BYTES_3_ONLY ;
 int BFPT_DWORD1_ADDRESS_BYTES_MASK ;

__attribute__((used)) static int
is25lp256_post_bfpt_fixups(struct spi_nor *nor,
      const struct sfdp_parameter_header *bfpt_header,
      const struct sfdp_bfpt *bfpt,
      struct spi_nor_flash_parameter *params)
{





 if ((bfpt->dwords[BFPT_DWORD(1)] & BFPT_DWORD1_ADDRESS_BYTES_MASK) ==
  BFPT_DWORD1_ADDRESS_BYTES_3_ONLY)
  nor->addr_width = 4;

 return 0;
}
