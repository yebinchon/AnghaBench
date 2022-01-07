
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; } ;


 int NAND_BBM_FIRSTPAGE ;
 int NAND_BBM_LASTPAGE ;
 int NAND_BBM_SECONDPAGE ;
 scalar_t__ nand_is_slc (struct nand_chip*) ;

__attribute__((used)) static int amd_nand_init(struct nand_chip *chip)
{
 if (nand_is_slc(chip))





  chip->options |= NAND_BBM_FIRSTPAGE | NAND_BBM_SECONDPAGE |
     NAND_BBM_LASTPAGE;

 return 0;
}
