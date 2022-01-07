
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uli526x_board_info {int buf_pool_dma_ptr; int buf_pool_ptr; int pdev; int desc_pool_dma_ptr; int desc_pool_ptr; int ioaddr; } ;
struct tx_desc {int dummy; } ;
struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;


 int DESC_ALL_CNT ;
 int TX_BUF_ALLOC ;
 int TX_DESC_CNT ;
 int free_netdev (struct net_device*) ;
 struct uli526x_board_info* netdev_priv (struct net_device*) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (int ,int,int ,int ) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void uli526x_remove_one(struct pci_dev *pdev)
{
 struct net_device *dev = pci_get_drvdata(pdev);
 struct uli526x_board_info *db = netdev_priv(dev);

 unregister_netdev(dev);
 pci_iounmap(pdev, db->ioaddr);
 pci_free_consistent(db->pdev, sizeof(struct tx_desc) *
    DESC_ALL_CNT + 0x20, db->desc_pool_ptr,
     db->desc_pool_dma_ptr);
 pci_free_consistent(db->pdev, TX_BUF_ALLOC * TX_DESC_CNT + 4,
    db->buf_pool_ptr, db->buf_pool_dma_ptr);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 free_netdev(dev);
}
