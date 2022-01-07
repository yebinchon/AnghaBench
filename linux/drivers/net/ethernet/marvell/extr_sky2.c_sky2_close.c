
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sky2_port {size_t port; int tx_le; struct sky2_hw* hw; } ;
struct sky2_hw {int ports; int napi; TYPE_1__* pdev; int flags; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int irq; } ;


 int B0_IMSK ;
 int SKY2_HW_IRQ_SETUP ;
 int free_irq (int ,struct sky2_hw*) ;
 int ifdown ;
 int napi_disable (int *) ;
 int napi_synchronize (int *) ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_info (struct sky2_port*,int ,struct net_device*,char*) ;
 int * portirq_msk ;
 int sky2_free_buffers (struct sky2_port*) ;
 int sky2_hw_down (struct sky2_port*) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;
 int synchronize_irq (int ) ;

__attribute__((used)) static int sky2_close(struct net_device *dev)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;


 if (!sky2->tx_le)
  return 0;

 netif_info(sky2, ifdown, dev, "disabling interface\n");

 if (hw->ports == 1) {
  sky2_write32(hw, B0_IMSK, 0);
  sky2_read32(hw, B0_IMSK);

  napi_disable(&hw->napi);
  free_irq(hw->pdev->irq, hw);
  hw->flags &= ~SKY2_HW_IRQ_SETUP;
 } else {
  u32 imask;


  imask = sky2_read32(hw, B0_IMSK);
  imask &= ~portirq_msk[sky2->port];
  sky2_write32(hw, B0_IMSK, imask);
  sky2_read32(hw, B0_IMSK);

  synchronize_irq(hw->pdev->irq);
  napi_synchronize(&hw->napi);
 }

 sky2_hw_down(sky2);

 sky2_free_buffers(sky2);

 return 0;
}
