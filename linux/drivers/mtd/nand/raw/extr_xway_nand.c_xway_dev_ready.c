
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int EBU_NAND_WAIT ;
 int NAND_WAIT_RD ;
 int ltq_ebu_r32 (int ) ;

__attribute__((used)) static int xway_dev_ready(struct nand_chip *chip)
{
 return ltq_ebu_r32(EBU_NAND_WAIT) & NAND_WAIT_RD;
}
