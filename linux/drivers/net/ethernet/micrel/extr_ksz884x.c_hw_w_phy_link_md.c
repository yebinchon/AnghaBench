
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 scalar_t__ KS884X_PHY_LINK_MD_OFFSET ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static inline void hw_w_phy_link_md(struct ksz_hw *hw, int phy, u16 data)
{
 writew(data, hw->io + phy + KS884X_PHY_LINK_MD_OFFSET);
}
