
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgbe_prv_data {int debugfs_an_cdr_workaround; struct xgbe_phy_data* phy_data; } ;
struct xgbe_phy_data {int phy_cdr_notrack; } ;


 int MDIO_MMD_PMAPMD ;
 int MDIO_VEND2_PMA_CDR_CONTROL ;
 int XGBE_PMA_CDR_TRACK_EN_MASK ;
 int XGBE_PMA_CDR_TRACK_EN_OFF ;
 int XMDIO_WRITE_BITS (struct xgbe_prv_data*,int ,int ,int ,int ) ;
 int xgbe_phy_rrc (struct xgbe_prv_data*) ;

__attribute__((used)) static void xgbe_phy_cdr_notrack(struct xgbe_prv_data *pdata)
{
 struct xgbe_phy_data *phy_data = pdata->phy_data;

 if (!pdata->debugfs_an_cdr_workaround)
  return;

 if (phy_data->phy_cdr_notrack)
  return;

 XMDIO_WRITE_BITS(pdata, MDIO_MMD_PMAPMD, MDIO_VEND2_PMA_CDR_CONTROL,
    XGBE_PMA_CDR_TRACK_EN_MASK,
    XGBE_PMA_CDR_TRACK_EN_OFF);

 xgbe_phy_rrc(pdata);

 phy_data->phy_cdr_notrack = 1;
}
