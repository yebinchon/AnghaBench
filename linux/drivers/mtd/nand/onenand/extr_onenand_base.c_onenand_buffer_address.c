
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ONENAND_BSA_DATARAM0 ;
 int ONENAND_BSA_DATARAM1 ;
 int ONENAND_BSA_MASK ;
 int ONENAND_BSA_SHIFT ;
 int ONENAND_BSC_MASK ;

__attribute__((used)) static int onenand_buffer_address(int dataram1, int sectors, int count)
{
 int bsa, bsc;


 bsa = sectors & ONENAND_BSA_MASK;

 if (dataram1)
  bsa |= ONENAND_BSA_DATARAM1;
 else
  bsa |= ONENAND_BSA_DATARAM0;


 bsc = count & ONENAND_BSC_MASK;

 return ((bsa << ONENAND_BSA_SHIFT) | bsc);
}
