
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int txpctl_mode; } ;


 int B43_LPPHY_TXPCTL_HW ;
 int B43_LPPHY_TXPCTL_OFF ;
 int B43_LPPHY_TXPCTL_SW ;
 int B43_LPPHY_TXPCTL_UNKNOWN ;
 int B43_LPPHY_TX_PWR_CTL_CMD ;
 int B43_LPPHY_TX_PWR_CTL_CMD_MODE ;



 int B43_WARN_ON (int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;

__attribute__((used)) static void lpphy_read_tx_pctl_mode_from_hardware(struct b43_wldev *dev)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;
 u16 ctl;

 ctl = b43_phy_read(dev, B43_LPPHY_TX_PWR_CTL_CMD);
 switch (ctl & B43_LPPHY_TX_PWR_CTL_CMD_MODE) {
 case 129:
  lpphy->txpctl_mode = B43_LPPHY_TXPCTL_OFF;
  break;
 case 128:
  lpphy->txpctl_mode = B43_LPPHY_TXPCTL_SW;
  break;
 case 130:
  lpphy->txpctl_mode = B43_LPPHY_TXPCTL_HW;
  break;
 default:
  lpphy->txpctl_mode = B43_LPPHY_TXPCTL_UNKNOWN;
  B43_WARN_ON(1);
  break;
 }
}
