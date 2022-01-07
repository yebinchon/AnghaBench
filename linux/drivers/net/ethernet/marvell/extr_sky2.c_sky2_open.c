
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_port {unsigned int port; struct sky2_hw* hw; } ;
struct sky2_hw {int ports; scalar_t__ chip_id; } ;
struct net_device {int name; } ;


 int B0_IMSK ;
 scalar_t__ CHIP_ID_YUKON_OPT ;
 scalar_t__ CHIP_ID_YUKON_OP_2 ;
 scalar_t__ CHIP_ID_YUKON_PRM ;
 int Y2_IS_PHY_QLNK ;
 int ifup ;
 struct sky2_port* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_info (struct sky2_port*,int ,struct net_device*,char*) ;
 int * portirq_msk ;
 int sky2_alloc_buffers (struct sky2_port*) ;
 int sky2_free_buffers (struct sky2_port*) ;
 int sky2_hw_up (struct sky2_port*) ;
 int sky2_read32 (struct sky2_hw*,int ) ;
 int sky2_setup_irq (struct sky2_hw*,int ) ;
 int sky2_write32 (struct sky2_hw*,int ,int ) ;

__attribute__((used)) static int sky2_open(struct net_device *dev)
{
 struct sky2_port *sky2 = netdev_priv(dev);
 struct sky2_hw *hw = sky2->hw;
 unsigned port = sky2->port;
 u32 imask;
 int err;

 netif_carrier_off(dev);

 err = sky2_alloc_buffers(sky2);
 if (err)
  goto err_out;


 if (hw->ports == 1 && (err = sky2_setup_irq(hw, dev->name)))
  goto err_out;

 sky2_hw_up(sky2);


 imask = sky2_read32(hw, B0_IMSK);

 if (hw->chip_id == CHIP_ID_YUKON_OPT ||
     hw->chip_id == CHIP_ID_YUKON_PRM ||
     hw->chip_id == CHIP_ID_YUKON_OP_2)
  imask |= Y2_IS_PHY_QLNK;

 imask |= portirq_msk[port];
 sky2_write32(hw, B0_IMSK, imask);
 sky2_read32(hw, B0_IMSK);

 netif_info(sky2, ifup, dev, "enabling interface\n");

 return 0;

err_out:
 sky2_free_buffers(sky2);
 return err;
}
