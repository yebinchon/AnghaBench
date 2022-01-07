
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct phy_device {scalar_t__ speed; } ;
struct et131x_adapter {TYPE_2__* regs; TYPE_1__* netdev; } ;
struct TYPE_6__ {int num_pkt_done; int max_pkt_time; } ;
struct TYPE_5__ {TYPE_3__ rxdma; } ;
struct TYPE_4__ {struct phy_device* phydev; } ;


 scalar_t__ SPEED_10 ;
 scalar_t__ SPEED_100 ;
 int writel (int,int *) ;

__attribute__((used)) static void et131x_set_rx_dma_timer(struct et131x_adapter *adapter)
{
 struct phy_device *phydev = adapter->netdev->phydev;




 if ((phydev->speed == SPEED_100) || (phydev->speed == SPEED_10)) {
  writel(0, &adapter->regs->rxdma.max_pkt_time);
  writel(1, &adapter->regs->rxdma.num_pkt_done);
 }
}
