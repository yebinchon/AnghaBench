
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor_flash_parameter {int dummy; } ;
struct spi_nor {int flags; } ;
struct sfdp_parameter_header {int dummy; } ;
struct sfdp_bfpt {int* dwords; } ;


 size_t BFPT_DWORD (int) ;
 int BFPT_DWORD5_FAST_READ_4_4_4 ;
 int SNOR_F_4B_OPCODES ;

__attribute__((used)) static int
mx25l25635_post_bfpt_fixups(struct spi_nor *nor,
       const struct sfdp_parameter_header *bfpt_header,
       const struct sfdp_bfpt *bfpt,
       struct spi_nor_flash_parameter *params)
{
 if (bfpt->dwords[BFPT_DWORD(5)] & BFPT_DWORD5_FAST_READ_4_4_4)
  nor->flags |= SNOR_F_4B_OPCODES;

 return 0;
}
