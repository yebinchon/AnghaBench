
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {int dummy; } ;


 int read_phy_reg (struct brcms_phy*,int) ;

__attribute__((used)) static bool wlc_phy_txpwr_ison_nphy(struct brcms_phy *pi)
{
 return read_phy_reg((pi), 0x1e7) & ((0x1 << 15) |
         (0x1 << 14) | (0x1 << 13));
}
