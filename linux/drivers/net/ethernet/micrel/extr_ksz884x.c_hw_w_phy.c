
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ksz_hw {scalar_t__ io; } ;


 int KS884X_PHY_1_CTRL_OFFSET ;
 int PHY_CTRL_INTERVAL ;
 int writew (int,scalar_t__) ;

__attribute__((used)) static void hw_w_phy(struct ksz_hw *hw, int port, u16 reg, u16 val)
{
 int phy;

 phy = KS884X_PHY_1_CTRL_OFFSET + port * PHY_CTRL_INTERVAL + reg;
 writew(val, hw->io + phy);
}
