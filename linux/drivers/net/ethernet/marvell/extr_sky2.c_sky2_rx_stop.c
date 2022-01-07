
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sky2_port {size_t port; int netdev; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;


 int BMU_FIFO_RST ;
 int BMU_RST_SET ;
 int PREF_UNIT_CTRL ;
 int PREF_UNIT_RST_SET ;
 int Q_ADDR (unsigned int,int ) ;
 int Q_CSR ;
 int Q_RL ;
 int Q_RSL ;
 int RB_ADDR (unsigned int,int ) ;
 int RB_CTRL ;
 int RB_DIS_OP_MD ;
 int Y2_QADDR (unsigned int,int ) ;
 int netdev_warn (int ,char*) ;
 unsigned int* rxqaddr ;
 scalar_t__ sky2_read8 (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int) ;
 int sky2_write8 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_rx_stop(struct sky2_port *sky2)
{
 struct sky2_hw *hw = sky2->hw;
 unsigned rxq = rxqaddr[sky2->port];
 int i;


 sky2_write8(hw, RB_ADDR(rxq, RB_CTRL), RB_DIS_OP_MD);

 for (i = 0; i < 0xffff; i++)
  if (sky2_read8(hw, RB_ADDR(rxq, Q_RSL))
      == sky2_read8(hw, RB_ADDR(rxq, Q_RL)))
   goto stopped;

 netdev_warn(sky2->netdev, "receiver stop failed\n");
stopped:
 sky2_write32(hw, Q_ADDR(rxq, Q_CSR), BMU_RST_SET | BMU_FIFO_RST);


 sky2_write32(hw, Y2_QADDR(rxq, PREF_UNIT_CTRL), PREF_UNIT_RST_SET);
}
