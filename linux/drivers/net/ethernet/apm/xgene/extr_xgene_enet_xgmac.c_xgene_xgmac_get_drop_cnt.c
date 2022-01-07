
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xgene_enet_pdata {int dummy; } ;


 int ECM_DROP_COUNT (int ) ;
 int ICM_DROP_COUNT (int ) ;
 int XGENET_ECM_CONFIG0_REG_0 ;
 int XGENET_ICM_ECM_DROP_COUNT_REG0 ;
 int xgene_enet_rd_axg_csr (struct xgene_enet_pdata*,int ,int *) ;

__attribute__((used)) static void xgene_xgmac_get_drop_cnt(struct xgene_enet_pdata *pdata,
         u32 *rx, u32 *tx)
{
 u32 count;

 xgene_enet_rd_axg_csr(pdata, XGENET_ICM_ECM_DROP_COUNT_REG0, &count);
 *rx = ICM_DROP_COUNT(count);
 *tx = ECM_DROP_COUNT(count);

 xgene_enet_rd_axg_csr(pdata, XGENET_ECM_CONFIG0_REG_0, &count);
}
