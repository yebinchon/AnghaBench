
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xgene_mdio_pdata {scalar_t__ diag_csr_addr; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static void xgene_menet_wr_diag_csr(struct xgene_mdio_pdata *pdata,
        u32 offset, u32 val)
{
 iowrite32(val, pdata->diag_csr_addr + offset);
}
