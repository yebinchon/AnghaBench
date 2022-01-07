
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xgene_enet_pdata {scalar_t__ eth_diag_csr_addr; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static u32 xgene_enet_rd_diag_csr(struct xgene_enet_pdata *p, u32 offset)
{
 return ioread32(p->eth_diag_csr_addr + offset);
}
