
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
 int CFG_CLE_IP_HDR_LEN_SET (int *,int ) ;
 int CFG_CLE_IP_PROTOCOL0_SET (int *,int) ;
 int CFG_CLE_NXTFPSEL0_SET (int *,int ) ;
 int CLE_BYPASS_REG0_0_ADDR ;
 int CLE_BYPASS_REG1_0_ADDR ;
 int xgene_enet_get_fpsel (int ) ;
 int xgene_enet_rd_csr (struct xgene_enet_pdata*,int ,int *) ;
 int xgene_enet_wr_csr (struct xgene_enet_pdata*,int ,int ) ;

__attribute__((used)) static void xgene_enet_cle_bypass(struct xgene_enet_pdata *pdata,
      u32 dst_ring_num, u16 bufpool_id,
      u16 nxtbufpool_id)
{
 u32 cb;
 u32 fpsel, nxtfpsel;

 fpsel = xgene_enet_get_fpsel(bufpool_id);
 nxtfpsel = xgene_enet_get_fpsel(nxtbufpool_id);

 xgene_enet_rd_csr(pdata, CLE_BYPASS_REG0_0_ADDR, &cb);
 cb |= CFG_CLE_BYPASS_EN0;
 CFG_CLE_IP_PROTOCOL0_SET(&cb, 3);
 CFG_CLE_IP_HDR_LEN_SET(&cb, 0);
 xgene_enet_wr_csr(pdata, CLE_BYPASS_REG0_0_ADDR, cb);

 xgene_enet_rd_csr(pdata, CLE_BYPASS_REG1_0_ADDR, &cb);
 CFG_CLE_DSTQID0_SET(&cb, dst_ring_num);
 CFG_CLE_FPSEL0_SET(&cb, fpsel);
 CFG_CLE_NXTFPSEL0_SET(&cb, nxtfpsel);
 xgene_enet_wr_csr(pdata, CLE_BYPASS_REG1_0_ADDR, cb);
}
