
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nfp_prog {int dummy; } ;


 int __emit_lcsr (struct nfp_prog*,int ,int ,int,int ,int,int) ;

__attribute__((used)) static void __emit_csr_rd(struct nfp_prog *nfp_prog, u16 addr)
{
 __emit_lcsr(nfp_prog, 0, 0, 0, addr, 0, 0);
}
