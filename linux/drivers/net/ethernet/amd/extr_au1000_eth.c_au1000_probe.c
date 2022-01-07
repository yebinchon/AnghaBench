
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct resource {scalar_t__ start; } ;
struct platform_device {char* name; int id; int dev; } ;
struct net_device {int irq; int watchdog_timeo; int * ethtool_ops; int * netdev_ops; scalar_t__ base_addr; int dev_addr; } ;
typedef scalar_t__ mac_reg ;
struct db_dest {scalar_t__ dma_addr; scalar_t__* vaddr; struct db_dest* pnext; } ;
struct au1000_private {int msg_enable; int mac_id; int phy1_search_mac0; size_t phy_addr; scalar_t__ phy_busid; int dma_addr; scalar_t__ vaddr; scalar_t__* mac; scalar_t__* enable; scalar_t__* macdma; TYPE_3__* mii_bus; struct db_dest** tx_db_inuse; struct db_dest** rx_db_inuse; TYPE_2__** tx_dma_ring; TYPE_1__** rx_dma_ring; struct db_dest* pDBfree; struct db_dest* db; scalar_t__ phy_irq; scalar_t__ phy_static_config; int phy_search_highest_addr; scalar_t__ mac_enabled; int lock; } ;
struct au1000_eth_platform_data {int phy1_search_mac0; size_t phy_addr; scalar_t__ phy_busid; scalar_t__ phy_irq; int phy_search_highest_addr; scalar_t__ phy_static_config; int mac; } ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_9__ {char* name; scalar_t__* irq; int id; int reset; int write; int read; struct net_device* priv; } ;
struct TYPE_8__ {unsigned int buff_stat; scalar_t__ len; } ;
struct TYPE_7__ {unsigned int buff_stat; } ;


 int AU1000_DEF_MSG_ENABLE ;
 int DMA_ATTR_NON_CONSISTENT ;
 int DRV_AUTHOR ;
 int DRV_NAME ;
 int DRV_VERSION ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int ETH_ALEN ;
 int ETH_TX_TIMEOUT ;
 int IORESOURCE_MEM ;
 int MAX_BUF_SIZE ;
 int MII_BUS_ID_SIZE ;
 int NUM_RX_BUFFS ;
 int NUM_RX_DMA ;
 int NUM_TX_BUFFS ;
 int NUM_TX_DMA ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 struct db_dest* au1000_GetFreeDB (struct au1000_private*) ;
 int au1000_ReleaseDB (struct au1000_private*,struct db_dest*) ;
 int au1000_debug ;
 int au1000_ethtool_ops ;
 int au1000_mdiobus_read ;
 int au1000_mdiobus_reset ;
 int au1000_mdiobus_write ;
 int au1000_mii_probe (struct net_device*) ;
 int au1000_netdev_ops ;
 int au1000_reset_mac (struct net_device*) ;
 int au1000_setup_hw_rings (struct au1000_private*,scalar_t__*) ;
 int dev_err (int *,char*) ;
 struct au1000_eth_platform_data* dev_get_platdata (int *) ;
 int dev_info (int *,char*) ;
 scalar_t__ dma_alloc_attrs (int *,int,int *,int ,int ) ;
 int dma_free_attrs (int *,int,void*,int ,int ) ;
 int eth_hw_addr_random (struct net_device*) ;
 int free_netdev (struct net_device*) ;
 scalar_t__* ioremap_nocache (scalar_t__,int ) ;
 int iounmap (scalar_t__*) ;
 scalar_t__ is_valid_ether_addr (int ) ;
 TYPE_3__* mdiobus_alloc () ;
 int mdiobus_free (TYPE_3__*) ;
 int mdiobus_register (TYPE_3__*) ;
 int mdiobus_unregister (TYPE_3__*) ;
 int memcpy (int ,int ,int ) ;
 int netdev_err (struct net_device*,char*) ;
 int netdev_info (struct net_device*,char*,unsigned long,int) ;
 struct au1000_private* netdev_priv (struct net_device*) ;
 int platform_get_irq (struct platform_device*,int ) ;
 struct resource* platform_get_resource (struct platform_device*,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct net_device*) ;
 int pr_info_once (char*,int ,int ,int ) ;
 int register_netdev (struct net_device*) ;
 int release_mem_region (scalar_t__,int ) ;
 int request_mem_region (scalar_t__,int ,char*) ;
 int resource_size (struct resource*) ;
 int snprintf (int ,int ,char*,char*,int) ;
 int spin_lock_init (int *) ;
 scalar_t__ virt_to_bus (scalar_t__*) ;
 int writel (int ,scalar_t__*) ;

__attribute__((used)) static int au1000_probe(struct platform_device *pdev)
{
 struct au1000_private *aup = ((void*)0);
 struct au1000_eth_platform_data *pd;
 struct net_device *dev = ((void*)0);
 struct db_dest *pDB, *pDBfree;
 int irq, i, err = 0;
 struct resource *base, *macen, *macdma;

 base = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!base) {
  dev_err(&pdev->dev, "failed to retrieve base register\n");
  err = -ENODEV;
  goto out;
 }

 macen = platform_get_resource(pdev, IORESOURCE_MEM, 1);
 if (!macen) {
  dev_err(&pdev->dev, "failed to retrieve MAC Enable register\n");
  err = -ENODEV;
  goto out;
 }

 irq = platform_get_irq(pdev, 0);
 if (irq < 0) {
  err = -ENODEV;
  goto out;
 }

 macdma = platform_get_resource(pdev, IORESOURCE_MEM, 2);
 if (!macdma) {
  dev_err(&pdev->dev, "failed to retrieve MACDMA registers\n");
  err = -ENODEV;
  goto out;
 }

 if (!request_mem_region(base->start, resource_size(base),
       pdev->name)) {
  dev_err(&pdev->dev, "failed to request memory region for base registers\n");
  err = -ENXIO;
  goto out;
 }

 if (!request_mem_region(macen->start, resource_size(macen),
       pdev->name)) {
  dev_err(&pdev->dev, "failed to request memory region for MAC enable register\n");
  err = -ENXIO;
  goto err_request;
 }

 if (!request_mem_region(macdma->start, resource_size(macdma),
       pdev->name)) {
  dev_err(&pdev->dev, "failed to request MACDMA memory region\n");
  err = -ENXIO;
  goto err_macdma;
 }

 dev = alloc_etherdev(sizeof(struct au1000_private));
 if (!dev) {
  err = -ENOMEM;
  goto err_alloc;
 }

 SET_NETDEV_DEV(dev, &pdev->dev);
 platform_set_drvdata(pdev, dev);
 aup = netdev_priv(dev);

 spin_lock_init(&aup->lock);
 aup->msg_enable = (au1000_debug < 4 ?
    AU1000_DEF_MSG_ENABLE : au1000_debug);




 aup->vaddr = (u32)dma_alloc_attrs(&pdev->dev, MAX_BUF_SIZE *
       (NUM_TX_BUFFS + NUM_RX_BUFFS),
       &aup->dma_addr, 0,
       DMA_ATTR_NON_CONSISTENT);
 if (!aup->vaddr) {
  dev_err(&pdev->dev, "failed to allocate data buffers\n");
  err = -ENOMEM;
  goto err_vaddr;
 }


 aup->mac = (struct mac_reg *)
   ioremap_nocache(base->start, resource_size(base));
 if (!aup->mac) {
  dev_err(&pdev->dev, "failed to ioremap MAC registers\n");
  err = -ENXIO;
  goto err_remap1;
 }


 aup->enable = (u32 *)ioremap_nocache(macen->start,
      resource_size(macen));
 if (!aup->enable) {
  dev_err(&pdev->dev, "failed to ioremap MAC enable register\n");
  err = -ENXIO;
  goto err_remap2;
 }
 aup->mac_id = pdev->id;

 aup->macdma = ioremap_nocache(macdma->start, resource_size(macdma));
 if (!aup->macdma) {
  dev_err(&pdev->dev, "failed to ioremap MACDMA registers\n");
  err = -ENXIO;
  goto err_remap3;
 }

 au1000_setup_hw_rings(aup, aup->macdma);

 writel(0, aup->enable);
 aup->mac_enabled = 0;

 pd = dev_get_platdata(&pdev->dev);
 if (!pd) {
  dev_info(&pdev->dev, "no platform_data passed,"
     " PHY search on MAC0\n");
  aup->phy1_search_mac0 = 1;
 } else {
  if (is_valid_ether_addr(pd->mac)) {
   memcpy(dev->dev_addr, pd->mac, ETH_ALEN);
  } else {

   eth_hw_addr_random(dev);
  }

  aup->phy_static_config = pd->phy_static_config;
  aup->phy_search_highest_addr = pd->phy_search_highest_addr;
  aup->phy1_search_mac0 = pd->phy1_search_mac0;
  aup->phy_addr = pd->phy_addr;
  aup->phy_busid = pd->phy_busid;
  aup->phy_irq = pd->phy_irq;
 }

 if (aup->phy_busid > 0) {
  dev_err(&pdev->dev, "MAC0-associated PHY attached 2nd MACs MII bus not supported yet\n");
  err = -ENODEV;
  goto err_mdiobus_alloc;
 }

 aup->mii_bus = mdiobus_alloc();
 if (aup->mii_bus == ((void*)0)) {
  dev_err(&pdev->dev, "failed to allocate mdiobus structure\n");
  err = -ENOMEM;
  goto err_mdiobus_alloc;
 }

 aup->mii_bus->priv = dev;
 aup->mii_bus->read = au1000_mdiobus_read;
 aup->mii_bus->write = au1000_mdiobus_write;
 aup->mii_bus->reset = au1000_mdiobus_reset;
 aup->mii_bus->name = "au1000_eth_mii";
 snprintf(aup->mii_bus->id, MII_BUS_ID_SIZE, "%s-%x",
  pdev->name, aup->mac_id);


 if (aup->phy_static_config)
  if (aup->phy_irq && aup->phy_busid == aup->mac_id)
   aup->mii_bus->irq[aup->phy_addr] = aup->phy_irq;

 err = mdiobus_register(aup->mii_bus);
 if (err) {
  dev_err(&pdev->dev, "failed to register MDIO bus\n");
  goto err_mdiobus_reg;
 }

 err = au1000_mii_probe(dev);
 if (err != 0)
  goto err_out;

 pDBfree = ((void*)0);

 pDB = aup->db;
 for (i = 0; i < (NUM_TX_BUFFS+NUM_RX_BUFFS); i++) {
  pDB->pnext = pDBfree;
  pDBfree = pDB;
  pDB->vaddr = (u32 *)((unsigned)aup->vaddr + MAX_BUF_SIZE*i);
  pDB->dma_addr = (dma_addr_t)virt_to_bus(pDB->vaddr);
  pDB++;
 }
 aup->pDBfree = pDBfree;

 err = -ENODEV;
 for (i = 0; i < NUM_RX_DMA; i++) {
  pDB = au1000_GetFreeDB(aup);
  if (!pDB)
   goto err_out;

  aup->rx_dma_ring[i]->buff_stat = (unsigned)pDB->dma_addr;
  aup->rx_db_inuse[i] = pDB;
 }

 err = -ENODEV;
 for (i = 0; i < NUM_TX_DMA; i++) {
  pDB = au1000_GetFreeDB(aup);
  if (!pDB)
   goto err_out;

  aup->tx_dma_ring[i]->buff_stat = (unsigned)pDB->dma_addr;
  aup->tx_dma_ring[i]->len = 0;
  aup->tx_db_inuse[i] = pDB;
 }

 dev->base_addr = base->start;
 dev->irq = irq;
 dev->netdev_ops = &au1000_netdev_ops;
 dev->ethtool_ops = &au1000_ethtool_ops;
 dev->watchdog_timeo = ETH_TX_TIMEOUT;





 au1000_reset_mac(dev);

 err = register_netdev(dev);
 if (err) {
  netdev_err(dev, "Cannot register net device, aborting.\n");
  goto err_out;
 }

 netdev_info(dev, "Au1xx0 Ethernet found at 0x%lx, irq %d\n",
   (unsigned long)base->start, irq);

 pr_info_once("%s version %s %s\n", DRV_NAME, DRV_VERSION, DRV_AUTHOR);

 return 0;

err_out:
 if (aup->mii_bus != ((void*)0))
  mdiobus_unregister(aup->mii_bus);




 au1000_reset_mac(dev);

 for (i = 0; i < NUM_RX_DMA; i++) {
  if (aup->rx_db_inuse[i])
   au1000_ReleaseDB(aup, aup->rx_db_inuse[i]);
 }
 for (i = 0; i < NUM_TX_DMA; i++) {
  if (aup->tx_db_inuse[i])
   au1000_ReleaseDB(aup, aup->tx_db_inuse[i]);
 }
err_mdiobus_reg:
 mdiobus_free(aup->mii_bus);
err_mdiobus_alloc:
 iounmap(aup->macdma);
err_remap3:
 iounmap(aup->enable);
err_remap2:
 iounmap(aup->mac);
err_remap1:
 dma_free_attrs(&pdev->dev, MAX_BUF_SIZE * (NUM_TX_BUFFS + NUM_RX_BUFFS),
   (void *)aup->vaddr, aup->dma_addr,
   DMA_ATTR_NON_CONSISTENT);
err_vaddr:
 free_netdev(dev);
err_alloc:
 release_mem_region(macdma->start, resource_size(macdma));
err_macdma:
 release_mem_region(macen->start, resource_size(macen));
err_request:
 release_mem_region(base->start, resource_size(base));
out:
 return err;
}
