
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mtd_info {int dummy; } ;
typedef int loff_t ;


 int LPDDR2_NVM_UNLOCK ;
 int lpddr2_nvm_do_block_op (struct mtd_info*,int ,int ,int ) ;

__attribute__((used)) static int lpddr2_nvm_unlock(struct mtd_info *mtd, loff_t start_add,
 uint64_t len)
{
 return lpddr2_nvm_do_block_op(mtd, start_add, len, LPDDR2_NVM_UNLOCK);
}
