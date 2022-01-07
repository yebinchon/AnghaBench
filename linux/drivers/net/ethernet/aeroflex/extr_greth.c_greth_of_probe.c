
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_13__ {int of_node; } ;
struct TYPE_10__ {int * irqs; } ;
struct platform_device {int * resource; TYPE_4__ dev; TYPE_1__ archdata; } ;
struct net_device {unsigned int* dev_addr; int hw_features; int features; int * ethtool_ops; TYPE_3__* netdev_ops; int flags; } ;
struct greth_regs {int status; int esa_lsb; int esa_msb; int control; int mdio; } ;
struct greth_private {int phyaddr; int gbit_mac; int multicast; int edcl; int mdio_int_en; struct greth_regs* regs; int mdio; int tx_bd_base_phys; void* tx_bd_base; TYPE_4__* dev; int rx_bd_base_phys; void* rx_bd_base; int napi; int irq; int devlock; scalar_t__ msg_enable; struct net_device* netdev; } ;
struct TYPE_12__ {int ndo_set_rx_mode; int ndo_start_xmit; } ;
struct TYPE_11__ {scalar_t__* id_ethaddr; } ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int GRETH_CTRL_DISDUPLEX ;
 scalar_t__ GRETH_DEF_MSG_ENABLE ;
 int GRETH_REGLOAD (int ) ;
 int GRETH_REGORIN (int ,int ) ;
 int GRETH_REGSAVE (int ,int) ;
 int GRETH_RESET ;
 int HZ ;
 int IFF_MULTICAST ;
 int IS_ERR (scalar_t__ const*) ;
 int NETIF_F_HIGHDMA ;
 int NETIF_F_IP_CSUM ;
 int NETIF_F_RXCSUM ;
 int NETIF_F_SG ;
 int SET_NETDEV_DEV (struct net_device*,TYPE_4__*) ;
 struct net_device* alloc_etherdev (int) ;
 int dev_dbg (TYPE_4__*,char*) ;
 int dev_err (TYPE_4__*,char*) ;
 int dev_set_drvdata (TYPE_4__*,struct net_device*) ;
 void* dma_alloc_coherent (TYPE_4__*,int,int *,int ) ;
 int dma_free_coherent (TYPE_4__*,int,void*,int ) ;
 int free_netdev (struct net_device*) ;
 scalar_t__ greth_debug ;
 int greth_ethtool_ops ;
 int greth_mdio_init (struct greth_private*) ;
 TYPE_3__ greth_netdev_ops ;
 int greth_poll ;
 int greth_set_multicast_list ;
 int greth_start_xmit_gbit ;
 TYPE_2__* idprom ;
 int is_valid_ether_addr (unsigned int*) ;
 int jiffies ;
 unsigned int* macaddr ;
 int mdiobus_unregister (int ) ;
 struct greth_private* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_probe (struct greth_private*) ;
 int netif_napi_add (struct net_device*,int *,int ,int) ;
 scalar_t__* of_get_mac_address (int ) ;
 struct greth_regs* of_ioremap (int *,int ,int ,char*) ;
 int of_iounmap (int *,struct greth_regs*,int ) ;
 int register_netdev (struct net_device*) ;
 int resource_size (int *) ;
 int spin_lock_init (int *) ;
 scalar_t__ time_after (int,unsigned long) ;

__attribute__((used)) static int greth_of_probe(struct platform_device *ofdev)
{
 struct net_device *dev;
 struct greth_private *greth;
 struct greth_regs *regs;

 int i;
 int err;
 int tmp;
 unsigned long timeout;

 dev = alloc_etherdev(sizeof(struct greth_private));

 if (dev == ((void*)0))
  return -ENOMEM;

 greth = netdev_priv(dev);
 greth->netdev = dev;
 greth->dev = &ofdev->dev;

 if (greth_debug > 0)
  greth->msg_enable = greth_debug;
 else
  greth->msg_enable = GRETH_DEF_MSG_ENABLE;

 spin_lock_init(&greth->devlock);

 greth->regs = of_ioremap(&ofdev->resource[0], 0,
     resource_size(&ofdev->resource[0]),
     "grlib-greth regs");

 if (greth->regs == ((void*)0)) {
  if (netif_msg_probe(greth))
   dev_err(greth->dev, "ioremap failure.\n");
  err = -EIO;
  goto error1;
 }

 regs = greth->regs;
 greth->irq = ofdev->archdata.irqs[0];

 dev_set_drvdata(greth->dev, dev);
 SET_NETDEV_DEV(dev, greth->dev);

 if (netif_msg_probe(greth))
  dev_dbg(greth->dev, "resetting controller.\n");


 GRETH_REGSAVE(regs->control, GRETH_RESET);


 timeout = jiffies + HZ/100;
 while (GRETH_REGLOAD(regs->control) & GRETH_RESET) {
  if (time_after(jiffies, timeout)) {
   err = -EIO;
   if (netif_msg_probe(greth))
    dev_err(greth->dev, "timeout when waiting for reset.\n");
   goto error2;
  }
 }


 greth->phyaddr = (GRETH_REGLOAD(regs->mdio) >> 11) & 0x1F;


 tmp = GRETH_REGLOAD(regs->control);
 greth->gbit_mac = (tmp >> 27) & 1;


 greth->multicast = (tmp >> 25) & 1;

 greth->edcl = (tmp >> 31) & 1;



 if (greth->edcl != 0)
  GRETH_REGORIN(regs->control, GRETH_CTRL_DISDUPLEX);


 greth->mdio_int_en = (tmp >> 26) & 1;

 err = greth_mdio_init(greth);
 if (err) {
  if (netif_msg_probe(greth))
   dev_err(greth->dev, "failed to register MDIO bus\n");
  goto error2;
 }


 greth->tx_bd_base = dma_alloc_coherent(greth->dev, 1024,
            &greth->tx_bd_base_phys,
            GFP_KERNEL);
 if (!greth->tx_bd_base) {
  err = -ENOMEM;
  goto error3;
 }


 greth->rx_bd_base = dma_alloc_coherent(greth->dev, 1024,
            &greth->rx_bd_base_phys,
            GFP_KERNEL);
 if (!greth->rx_bd_base) {
  err = -ENOMEM;
  goto error4;
 }


 for (i = 0; i < 6; i++) {
  if (macaddr[i] != 0)
   break;
 }
 if (i == 6) {
  const u8 *addr;

  addr = of_get_mac_address(ofdev->dev.of_node);
  if (!IS_ERR(addr)) {
   for (i = 0; i < 6; i++)
    macaddr[i] = (unsigned int) addr[i];
  } else {




  }
 }

 for (i = 0; i < 6; i++)
  dev->dev_addr[i] = macaddr[i];

 macaddr[5]++;

 if (!is_valid_ether_addr(&dev->dev_addr[0])) {
  if (netif_msg_probe(greth))
   dev_err(greth->dev, "no valid ethernet address, aborting.\n");
  err = -EINVAL;
  goto error5;
 }

 GRETH_REGSAVE(regs->esa_msb, dev->dev_addr[0] << 8 | dev->dev_addr[1]);
 GRETH_REGSAVE(regs->esa_lsb, dev->dev_addr[2] << 24 | dev->dev_addr[3] << 16 |
        dev->dev_addr[4] << 8 | dev->dev_addr[5]);


 GRETH_REGSAVE(regs->status, 0xFF);

 if (greth->gbit_mac) {
  dev->hw_features = NETIF_F_SG | NETIF_F_IP_CSUM |
   NETIF_F_RXCSUM;
  dev->features = dev->hw_features | NETIF_F_HIGHDMA;
  greth_netdev_ops.ndo_start_xmit = greth_start_xmit_gbit;
 }

 if (greth->multicast) {
  greth_netdev_ops.ndo_set_rx_mode = greth_set_multicast_list;
  dev->flags |= IFF_MULTICAST;
 } else {
  dev->flags &= ~IFF_MULTICAST;
 }

 dev->netdev_ops = &greth_netdev_ops;
 dev->ethtool_ops = &greth_ethtool_ops;

 err = register_netdev(dev);
 if (err) {
  if (netif_msg_probe(greth))
   dev_err(greth->dev, "netdevice registration failed.\n");
  goto error5;
 }


 netif_napi_add(dev, &greth->napi, greth_poll, 64);

 return 0;

error5:
 dma_free_coherent(greth->dev, 1024, greth->rx_bd_base, greth->rx_bd_base_phys);
error4:
 dma_free_coherent(greth->dev, 1024, greth->tx_bd_base, greth->tx_bd_base_phys);
error3:
 mdiobus_unregister(greth->mdio);
error2:
 of_iounmap(&ofdev->resource[0], greth->regs, resource_size(&ofdev->resource[0]));
error1:
 free_netdev(dev);
 return err;
}
