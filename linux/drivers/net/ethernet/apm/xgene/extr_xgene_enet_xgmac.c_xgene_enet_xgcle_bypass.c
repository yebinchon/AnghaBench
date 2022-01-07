
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct xgene_enet_pdata {int dummy; } ;


 int CFG_CLE_BYPASS_EN0 ;
 int CFG_CLE_DSTQID0_SET (int *,int ) ;
 int CFG_CLE_FPSEL0_SET (int *,int ) ;
 int CFG_CLE_IP_PROTOCOL0_SET (int *,int) ;
 int CFG_CLE_NXTFPSEL0_SET (int *,int ) ;
 int XCLE_BYPASS_REG0_ADDR ;
 int XCLE_BYPASS_REG1_ADDR ;
 int pr_info (char*,int ,int ) ;
 int xgene_enet_get_fpsel (int ) ;
 int xgene_enet_rd_csr (struct xgene_enet_pdata*,int ,int *) ;
 int xgene_enet_wr_csr (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_enet_xgcle_bypass(struct xgene_enet_pdata *pdata,
        u32 dst_ring_num, u16 bufpool_id,
        u16 nxtbufpool_id)
{
 u32 cb, fpsel, nxtfpsel;

 xgene_enet_rd_csr(pdata, XCLE_BYPASS_REG0_ADDR, &cb);
 cb |= CFG_CLE_BYPASS_EN0;
 CFG_CLE_IP_PROTOCOL0_SET(&cb, 3);
 xgene_enet_wr_csr(pdata, XCLE_BYPASS_REG0_ADDR, cb);

 fpsel = xgene_enet_get_fpsel(bufpool_id);
 nxtfpsel = xgene_enet_get_fpsel(nxtbufpool_id);
 xgene_enet_rd_csr(pdata, XCLE_BYPASS_REG1_ADDR, &cb);
 CFG_CLE_DSTQID0_SET(&cb, dst_ring_num);
 CFG_CLE_FPSEL0_SET(&cb, fpsel);
 CFG_CLE_NXTFPSEL0_SET(&cb, nxtfpsel);
 xgene_enet_wr_csr(pdata, XCLE_BYPASS_REG1_ADDR, cb);
 pr_info("+ cle_bypass: fpsel: %d nxtfpsel: %d\n", fpsel, nxtfpsel);
}
