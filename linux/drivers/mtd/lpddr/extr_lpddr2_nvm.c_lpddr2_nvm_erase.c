
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {int dummy; } ;
struct erase_info {int len; int addr; } ;


 int LPDDR2_NVM_ERASE ;
 int lpddr2_nvm_do_block_op (struct mtd_info*,int ,int ,int ) ;

__attribute__((used)) static int lpddr2_nvm_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 return lpddr2_nvm_do_block_op(mtd, instr->addr, instr->len,
          LPDDR2_NVM_ERASE);
}
