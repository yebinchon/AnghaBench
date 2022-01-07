
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct phy_device {int speed; scalar_t__ duplex; int link; } ;
struct TYPE_4__ {int desc_split; } ;
struct ag71xx {int* fifodata; TYPE_2__ tx_ring; TYPE_1__* ndev; } ;
struct TYPE_3__ {struct phy_device* phydev; } ;


 int AG71XX_REG_FIFO_CFG3 ;
 int AG71XX_REG_FIFO_CFG5 ;
 int AG71XX_REG_MAC_CFG2 ;
 int AG71XX_REG_MAC_IFCTL ;
 int AR7100 ;
 int AR9130 ;
 int FIFO_CFG5_BM ;
 int MAC_CFG2_FDX ;
 int MAC_CFG2_IF_1000 ;
 int MAC_CFG2_IF_10_100 ;
 int MAC_IFCTL_SPEED ;



 int WARN (int,char*,int) ;
 int ag71xx_fast_reset (struct ag71xx*) ;
 int ag71xx_hw_start (struct ag71xx*) ;
 int ag71xx_hw_stop (struct ag71xx*) ;
 int ag71xx_is (struct ag71xx*,int ) ;
 int ag71xx_rr (struct ag71xx*,int ) ;
 int ag71xx_wr (struct ag71xx*,int ,int) ;
 int phy_print_status (struct phy_device*) ;

__attribute__((used)) static void ag71xx_link_adjust(struct ag71xx *ag, bool update)
{
 struct phy_device *phydev = ag->ndev->phydev;
 u32 cfg2;
 u32 ifctl;
 u32 fifo5;

 if (!phydev->link && update) {
  ag71xx_hw_stop(ag);
  return;
 }

 if (!ag71xx_is(ag, AR7100) && !ag71xx_is(ag, AR9130))
  ag71xx_fast_reset(ag);

 cfg2 = ag71xx_rr(ag, AG71XX_REG_MAC_CFG2);
 cfg2 &= ~(MAC_CFG2_IF_1000 | MAC_CFG2_IF_10_100 | MAC_CFG2_FDX);
 cfg2 |= (phydev->duplex) ? MAC_CFG2_FDX : 0;

 ifctl = ag71xx_rr(ag, AG71XX_REG_MAC_IFCTL);
 ifctl &= ~(MAC_IFCTL_SPEED);

 fifo5 = ag71xx_rr(ag, AG71XX_REG_FIFO_CFG5);
 fifo5 &= ~FIFO_CFG5_BM;

 switch (phydev->speed) {
 case 128:
  cfg2 |= MAC_CFG2_IF_1000;
  fifo5 |= FIFO_CFG5_BM;
  break;
 case 129:
  cfg2 |= MAC_CFG2_IF_10_100;
  ifctl |= MAC_IFCTL_SPEED;
  break;
 case 130:
  cfg2 |= MAC_CFG2_IF_10_100;
  break;
 default:
  WARN(1, "not supported speed %i\n", phydev->speed);
  return;
 }

 if (ag->tx_ring.desc_split) {
  ag->fifodata[2] &= 0xffff;
  ag->fifodata[2] |= ((2048 - ag->tx_ring.desc_split) / 4) << 16;
 }

 ag71xx_wr(ag, AG71XX_REG_FIFO_CFG3, ag->fifodata[2]);

 ag71xx_wr(ag, AG71XX_REG_MAC_CFG2, cfg2);
 ag71xx_wr(ag, AG71XX_REG_FIFO_CFG5, fifo5);
 ag71xx_wr(ag, AG71XX_REG_MAC_IFCTL, ifctl);

 ag71xx_hw_start(ag);

 if (update)
  phy_print_status(phydev);
}
