
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ last; scalar_t__ mac_rp; scalar_t__ mac_lev; scalar_t__ fifo_rp; scalar_t__ fifo_lev; } ;
struct sky2_port {unsigned int port; scalar_t__ last_rx; TYPE_1__ check; struct sky2_hw* hw; } ;
struct sky2_hw {int dummy; } ;
struct net_device {int dummy; } ;


 int KERN_DEBUG ;
 int Q_ADDR (unsigned int,int ) ;
 int Q_RL ;
 int Q_RP ;
 int Q_WP ;
 int RX_GMF_RLEV ;
 int RX_GMF_RP ;
 int SK_REG (unsigned int,int ) ;
 int netdev_printk (int ,struct net_device*,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 unsigned int* rxqaddr ;
 scalar_t__ sky2_read32 (struct sky2_hw*,int ) ;
 scalar_t__ sky2_read8 (struct sky2_hw*,int ) ;

__attribute__((used)) static int sky2_rx_hung(struct net_device *dev)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;
 unsigned rxq = rxqaddr[port];
 u32 mac_rp = sky2_read32(hw, SK_REG(port, RX_GMF_RP));
 u8 mac_lev = sky2_read8(hw, SK_REG(port, RX_GMF_RLEV));
 u8 fifo_rp = sky2_read8(hw, Q_ADDR(rxq, Q_RP));
 u8 fifo_lev = sky2_read8(hw, Q_ADDR(rxq, Q_RL));


 if (sky2->check.last == sky2->last_rx &&
     ((mac_rp == sky2->check.mac_rp &&
       mac_lev != 0 && mac_lev >= sky2->check.mac_lev) ||

      (fifo_rp == sky2->check.fifo_rp &&
       fifo_lev != 0 && fifo_lev >= sky2->check.fifo_lev))) {
  netdev_printk(KERN_DEBUG, dev,
         "hung mac %d:%d fifo %d (%d:%d)\n",
         mac_lev, mac_rp, fifo_lev,
         fifo_rp, sky2_read8(hw, Q_ADDR(rxq, Q_WP)));
  return 1;
 } else {
  sky2->check.last = sky2->last_rx;
  sky2->check.mac_rp = mac_rp;
  sky2->check.mac_lev = mac_lev;
  sky2->check.fifo_rp = fifo_rp;
  sky2->check.fifo_lev = fifo_lev;
  return 0;
 }
}
