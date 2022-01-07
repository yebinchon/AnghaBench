
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct timer_list {int dummy; } ;
struct skge_port {int port; int link_timer; struct skge_hw* hw; struct net_device* netdev; } ;
struct skge_hw {int phy_lock; } ;
struct net_device {int dummy; } ;


 scalar_t__ LINK_HZ ;
 int XM_GP_INP_ASS ;
 int XM_GP_PORT ;
 int XM_IMSK ;
 int XM_ISRC ;
 int XM_IS_INP_ASS ;
 struct skge_port* from_timer (int ,struct timer_list*,int ) ;
 scalar_t__ jiffies ;
 int link_timer ;
 int mod_timer (int *,int ) ;
 int netif_running (struct net_device*) ;
 int round_jiffies (scalar_t__) ;
 struct skge_port* skge ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ xm_check_link (struct net_device*) ;
 int xm_read16 (struct skge_hw*,int,int ) ;
 int xm_write16 (struct skge_hw*,int,int ,int) ;

__attribute__((used)) static void xm_link_timer(struct timer_list *t)
{
 struct skge_port *skge = from_timer(skge, t, link_timer);
 struct net_device *dev = skge->netdev;
 struct skge_hw *hw = skge->hw;
 int port = skge->port;
 int i;
 unsigned long flags;

 if (!netif_running(dev))
  return;

 spin_lock_irqsave(&hw->phy_lock, flags);





 for (i = 0; i < 3; i++) {
  if (xm_read16(hw, port, XM_GP_PORT) & XM_GP_INP_ASS)
   goto link_down;
 }


 if (xm_check_link(dev)) {
  u16 msk = xm_read16(hw, port, XM_IMSK);
  msk &= ~XM_IS_INP_ASS;
  xm_write16(hw, port, XM_IMSK, msk);
  xm_read16(hw, port, XM_ISRC);
 } else {
link_down:
  mod_timer(&skge->link_timer,
     round_jiffies(jiffies + LINK_HZ));
 }
 spin_unlock_irqrestore(&hw->phy_lock, flags);
}
