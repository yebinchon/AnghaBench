
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {void* _read_fact_prot_reg; void* _read_user_prot_reg; } ;


 void* cfi_amdstd_secsi_read ;

__attribute__((used)) static void fixup_use_secsi(struct mtd_info *mtd)
{

 mtd->_read_user_prot_reg = cfi_amdstd_secsi_read;
 mtd->_read_fact_prot_reg = cfi_amdstd_secsi_read;
}
