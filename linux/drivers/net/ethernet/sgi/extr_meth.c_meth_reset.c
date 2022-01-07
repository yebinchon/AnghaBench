
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int flags; } ;
struct meth_private {int mac_ctrl; int dma_ctrl; } ;
struct TYPE_3__ {int mac_ctrl; int dma_ctrl; } ;
struct TYPE_4__ {TYPE_1__ eth; } ;


 int DPRINTK (char*) ;
 int ENODEV ;
 int IFF_PROMISC ;
 int METH_ACCEPT_MCAST ;
 int METH_DEFAULT_IPG ;
 int METH_PROMISC ;
 int METH_RX_DEPTH_SHIFT ;
 int METH_RX_OFFSET_SHIFT ;
 int RX_RING_ENTRIES ;
 int SGI_MAC_RESET ;
 int load_eaddr (struct net_device*) ;
 TYPE_2__* mace ;
 scalar_t__ mdio_probe (struct meth_private*) ;
 int meth_check_link (struct net_device*) ;
 struct meth_private* netdev_priv (struct net_device*) ;
 int udelay (int) ;

int meth_reset(struct net_device *dev)
{
 struct meth_private *priv = netdev_priv(dev);


 mace->eth.mac_ctrl = SGI_MAC_RESET;
 udelay(1);
 mace->eth.mac_ctrl = 0;
 udelay(25);


 load_eaddr(dev);



 if (mdio_probe(priv) < 0) {
  DPRINTK("Unable to find PHY\n");
  return -ENODEV;
 }


 priv->mac_ctrl = METH_ACCEPT_MCAST | METH_DEFAULT_IPG;
 if (dev->flags & IFF_PROMISC)
  priv->mac_ctrl |= METH_PROMISC;
 mace->eth.mac_ctrl = priv->mac_ctrl;


 meth_check_link(dev);


 priv->dma_ctrl = (4 << METH_RX_OFFSET_SHIFT) |
    (RX_RING_ENTRIES << METH_RX_DEPTH_SHIFT);
 mace->eth.dma_ctrl = priv->dma_ctrl;

 return 0;
}
