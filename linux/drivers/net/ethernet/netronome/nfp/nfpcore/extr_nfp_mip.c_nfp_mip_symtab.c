
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nfp_mip {int symtab_size; int symtab_addr; } ;


 int le32_to_cpu (int ) ;

void nfp_mip_symtab(const struct nfp_mip *mip, u32 *addr, u32 *size)
{
 *addr = le32_to_cpu(mip->symtab_addr);
 *size = le32_to_cpu(mip->symtab_size);
}
