
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int lock; } ;


 int EDGE_RATE_CNTL_MASK ;
 int EDGE_RATE_CNTL_POS ;
 int MSCC_PHY_PAGE_EXTENDED_2 ;
 int MSCC_PHY_WOL_MAC_CONTROL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int phy_modify_paged (struct phy_device*,int ,int ,int ,int) ;

__attribute__((used)) static int vsc85xx_edge_rate_cntl_set(struct phy_device *phydev, u8 edge_rate)
{
 int rc;

 mutex_lock(&phydev->lock);
 rc = phy_modify_paged(phydev, MSCC_PHY_PAGE_EXTENDED_2,
         MSCC_PHY_WOL_MAC_CONTROL, EDGE_RATE_CNTL_MASK,
         edge_rate << EDGE_RATE_CNTL_POS);
 mutex_unlock(&phydev->lock);

 return rc;
}
