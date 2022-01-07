
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_port {int dummy; } ;
struct sky2_hw {int ports; int flags; int napi; struct net_device** dev; } ;
struct net_device {int dummy; } ;


 int B0_IMSK ;
 int B0_Y2_SP_LISR ;
 int SKY2_HW_IRQ_SETUP ;
 int Y2_IS_BASE ;
 int napi_enable (int *) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int * portirq_msk ;
 int sky2_hw_up (struct sky2_port*) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_set_multicast (struct net_device*) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static void sky2_all_up(struct sky2_hw *hw)
{
 u32 imask = Y2_IS_BASE;
 int i;

 for (i = 0; i < hw->ports; i++) {
  struct net_device *dev = hw->dev[i];
  struct sky2_port *sky2 = netdev_priv(dev);

  if (!netif_running(dev))
   continue;

  sky2_hw_up(sky2);
  sky2_set_multicast(dev);
  imask |= portirq_msk[i];
  netif_wake_queue(dev);
 }

 if (hw->flags & SKY2_HW_IRQ_SETUP) {
  sky2_write32(hw, B0_IMSK, imask);
  sky2_read32(hw, B0_IMSK);
  sky2_read32(hw, B0_Y2_SP_LISR);
  napi_enable(&hw->napi);
 }
}
