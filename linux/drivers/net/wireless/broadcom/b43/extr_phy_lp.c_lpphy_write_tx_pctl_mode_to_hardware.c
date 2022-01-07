
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int txpctl_mode; } ;





 int B43_LPPHY_TX_PWR_CTL_CMD ;
 int B43_LPPHY_TX_PWR_CTL_CMD_MODE ;
 int B43_LPPHY_TX_PWR_CTL_CMD_MODE_HW ;
 int B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF ;
 int B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW ;
 int B43_WARN_ON (int) ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int ) ;

__attribute__((used)) static void lpphy_write_tx_pctl_mode_to_hardware(struct b43_wldev *dev)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;
 u16 ctl;

 switch (lpphy->txpctl_mode) {
 case 129:
  ctl = B43_LPPHY_TX_PWR_CTL_CMD_MODE_OFF;
  break;
 case 130:
  ctl = B43_LPPHY_TX_PWR_CTL_CMD_MODE_HW;
  break;
 case 128:
  ctl = B43_LPPHY_TX_PWR_CTL_CMD_MODE_SW;
  break;
 default:
  ctl = 0;
  B43_WARN_ON(1);
 }
 b43_phy_maskset(dev, B43_LPPHY_TX_PWR_CTL_CMD,
   ~B43_LPPHY_TX_PWR_CTL_CMD_MODE & 0xFFFF, ctl);
}
