
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_port {int dummy; } ;
struct sky2_hw {int flags; int ports; struct net_device** dev; int napi; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int B0_IMSK ;
 int SKY2_HW_IRQ_SETUP ;
 int napi_disable (int *) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int sky2_hw_down (struct sky2_port*) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static void sky2_all_down(struct sky2_hw *hw)
{
 int i;

 if (hw->flags & SKY2_HW_IRQ_SETUP) {
  sky2_write32(hw, B0_IMSK, 0);
  sky2_read32(hw, B0_IMSK);

  synchronize_irq(hw->pdev->irq);
  napi_disable(&hw->napi);
 }

 for (i = 0; i < hw->ports; i++) {
  struct net_device *dev = hw->dev[i];
  struct sky2_port *sky2 = netdev_priv(dev);

  if (!netif_running(dev))
   continue;

  netif_carrier_off(dev);
  netif_tx_disable(dev);
  sky2_hw_down(sky2);
 }
}
