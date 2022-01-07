
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tx_desc {int dummy; } ;
struct pci_device_id {int driver_data; } ;
struct pci_dev {int revision; int irq; int dev; } ;
struct net_device {int * dev_addr; int dev; int * ethtool_ops; int * netdev_ops; } ;
struct dmfe_board_info {int chip_id; int chip_revision; int chip_type; int desc_pool_dma_ptr; void* desc_pool_ptr; int buf_pool_dma_ptr; void* buf_pool_ptr; int ioaddr; int * srom; int lock; struct pci_dev* pdev; scalar_t__ wol_mode; int buf_pool_dma_start; void* buf_pool_start; int first_tx_desc_dma; struct tx_desc* first_tx_desc; } ;
struct device_node {int dummy; } ;
typedef int __le16 ;


 scalar_t__ CHK_IO_SIZE (struct pci_dev*) ;
 int DESC_ALL_CNT ;
 int DMA_BIT_MASK (int) ;
 int DMFE_DBUG (int ,char*,int ) ;
 int DRV_NAME ;
 int ENODEV ;
 int ENOMEM ;
 int PCI_DM9100_ID ;
 int PCI_DM9102_ID ;
 int PCI_LATENCY_TIMER ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;
 int TX_BUF_ALLOC ;
 int TX_DESC_CNT ;
 struct net_device* alloc_etherdev (int) ;
 int cpu_to_le16 (int ) ;
 int dev_info (int *,char*,int,int ,int *,int ) ;
 int free_netdev (struct net_device*) ;
 int netdev_ethtool_ops ;
 int netdev_ops ;
 struct dmfe_board_info* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ of_get_property (struct device_node*,char*,int *) ;
 void* pci_alloc_consistent (struct pci_dev*,int,int *) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_enable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,void*,int ) ;
 int pci_iomap (struct pci_dev*,int ,int ) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_name (struct pci_dev*) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_release_regions (struct pci_dev*) ;
 scalar_t__ pci_request_regions (struct pci_dev*,int ) ;
 scalar_t__ pci_resource_len (struct pci_dev*,int ) ;
 int pci_resource_start (struct pci_dev*,int ) ;
 scalar_t__ pci_set_dma_mask (struct pci_dev*,int ) ;
 int pci_set_drvdata (struct pci_dev*,struct net_device*) ;
 int pci_set_master (struct pci_dev*) ;
 int pci_write_config_byte (struct pci_dev*,int ,int) ;
 int pr_err (char*) ;
 int pr_info (char*,...) ;
 int pr_warn (char*) ;
 int printed_version ;
 int read_srom_word (int ,int) ;
 int register_netdev (struct net_device*) ;
 int spin_lock_init (int *) ;
 int version ;

__attribute__((used)) static int dmfe_init_one(struct pci_dev *pdev, const struct pci_device_id *ent)
{
 struct dmfe_board_info *db;
 struct net_device *dev;
 u32 pci_pmr;
 int i, err;

 DMFE_DBUG(0, "dmfe_init_one()", 0);

 if (!printed_version++)
  pr_info("%s\n", version);
 dev = alloc_etherdev(sizeof(*db));
 if (dev == ((void*)0))
  return -ENOMEM;
 SET_NETDEV_DEV(dev, &pdev->dev);

 if (pci_set_dma_mask(pdev, DMA_BIT_MASK(32))) {
  pr_warn("32-bit PCI DMA not available\n");
  err = -ENODEV;
  goto err_out_free;
 }


 err = pci_enable_device(pdev);
 if (err)
  goto err_out_free;

 if (!pci_resource_start(pdev, 0)) {
  pr_err("I/O base is zero\n");
  err = -ENODEV;
  goto err_out_disable;
 }

 if (pci_resource_len(pdev, 0) < (CHK_IO_SIZE(pdev)) ) {
  pr_err("Allocated I/O size too small\n");
  err = -ENODEV;
  goto err_out_disable;
 }
 if (pci_request_regions(pdev, DRV_NAME)) {
  pr_err("Failed to request PCI regions\n");
  err = -ENODEV;
  goto err_out_disable;
 }


 db = netdev_priv(dev);


 db->desc_pool_ptr = pci_alloc_consistent(pdev, sizeof(struct tx_desc) *
   DESC_ALL_CNT + 0x20, &db->desc_pool_dma_ptr);
 if (!db->desc_pool_ptr) {
  err = -ENOMEM;
  goto err_out_res;
 }

 db->buf_pool_ptr = pci_alloc_consistent(pdev, TX_BUF_ALLOC *
   TX_DESC_CNT + 4, &db->buf_pool_dma_ptr);
 if (!db->buf_pool_ptr) {
  err = -ENOMEM;
  goto err_out_free_desc;
 }

 db->first_tx_desc = (struct tx_desc *) db->desc_pool_ptr;
 db->first_tx_desc_dma = db->desc_pool_dma_ptr;
 db->buf_pool_start = db->buf_pool_ptr;
 db->buf_pool_dma_start = db->buf_pool_dma_ptr;

 db->chip_id = ent->driver_data;

 db->ioaddr = pci_iomap(pdev, 0, 0);
 if (!db->ioaddr) {
  err = -ENOMEM;
  goto err_out_free_buf;
 }

 db->chip_revision = pdev->revision;
 db->wol_mode = 0;

 db->pdev = pdev;

 pci_set_drvdata(pdev, dev);
 dev->netdev_ops = &netdev_ops;
 dev->ethtool_ops = &netdev_ethtool_ops;
 netif_carrier_off(dev);
 spin_lock_init(&db->lock);

 pci_read_config_dword(pdev, 0x50, &pci_pmr);
 pci_pmr &= 0x70000;
 if ( (pci_pmr == 0x10000) && (db->chip_revision == 0x31) )
  db->chip_type = 1;
 else
  db->chip_type = 0;


 for (i = 0; i < 64; i++) {
  ((__le16 *) db->srom)[i] =
   cpu_to_le16(read_srom_word(db->ioaddr, i));
 }


 for (i = 0; i < 6; i++)
  dev->dev_addr[i] = db->srom[20 + i];

 err = register_netdev (dev);
 if (err)
  goto err_out_unmap;

 dev_info(&dev->dev, "Davicom DM%04lx at pci%s, %pM, irq %d\n",
   ent->driver_data >> 16,
   pci_name(pdev), dev->dev_addr, pdev->irq);

 pci_set_master(pdev);

 return 0;

err_out_unmap:
 pci_iounmap(pdev, db->ioaddr);
err_out_free_buf:
 pci_free_consistent(pdev, TX_BUF_ALLOC * TX_DESC_CNT + 4,
       db->buf_pool_ptr, db->buf_pool_dma_ptr);
err_out_free_desc:
 pci_free_consistent(pdev, sizeof(struct tx_desc) * DESC_ALL_CNT + 0x20,
       db->desc_pool_ptr, db->desc_pool_dma_ptr);
err_out_res:
 pci_release_regions(pdev);
err_out_disable:
 pci_disable_device(pdev);
err_out_free:
 free_netdev(dev);

 return err;
}
