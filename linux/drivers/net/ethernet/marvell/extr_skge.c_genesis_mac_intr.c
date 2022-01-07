
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct skge_port {int link_timer; int netdev; } ;
struct skge_hw {scalar_t__ phy_type; struct net_device** dev; } ;
struct TYPE_2__ {int tx_fifo_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 int KERN_DEBUG ;
 scalar_t__ SK_PHY_XMAC ;
 int XM_ISRC ;
 int XM_IS_INP_ASS ;
 int XM_IS_TXF_UR ;
 int XM_MD_FTF ;
 int XM_MODE ;
 int intr ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netif_printk (struct skge_port*,int ,int ,int ,char*,int) ;
 int xm_link_down (struct skge_hw*,int) ;
 int xm_read16 (struct skge_hw*,int,int ) ;
 int xm_write32 (struct skge_hw*,int,int ,int ) ;

__attribute__((used)) static void genesis_mac_intr(struct skge_hw *hw, int port)
{
 struct net_device *dev = hw->dev[port];
 struct skge_port *skge = netdev_priv(dev);
 u16 status = xm_read16(hw, port, XM_ISRC);

 netif_printk(skge, intr, KERN_DEBUG, skge->netdev,
       "mac interrupt status 0x%x\n", status);

 if (hw->phy_type == SK_PHY_XMAC && (status & XM_IS_INP_ASS)) {
  xm_link_down(hw, port);
  mod_timer(&skge->link_timer, jiffies + 1);
 }

 if (status & XM_IS_TXF_UR) {
  xm_write32(hw, port, XM_MODE, XM_MD_FTF);
  ++dev->stats.tx_fifo_errors;
 }
}
