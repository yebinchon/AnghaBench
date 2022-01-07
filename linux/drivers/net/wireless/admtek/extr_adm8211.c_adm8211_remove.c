
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ieee80211_hw {struct adm8211_priv* priv; } ;
struct adm8211_priv {int rx_ring_size; int tx_ring_size; int map; int eeprom; int rx_buffers; int rx_ring_dma; int rx_ring; } ;
struct adm8211_desc {int dummy; } ;


 int ieee80211_free_hw (struct ieee80211_hw*) ;
 int ieee80211_unregister_hw (struct ieee80211_hw*) ;
 int kfree (int ) ;
 int pci_disable_device (struct pci_dev*) ;
 int pci_free_consistent (struct pci_dev*,int,int ,int ) ;
 struct ieee80211_hw* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;

__attribute__((used)) static void adm8211_remove(struct pci_dev *pdev)
{
 struct ieee80211_hw *dev = pci_get_drvdata(pdev);
 struct adm8211_priv *priv;

 if (!dev)
  return;

 ieee80211_unregister_hw(dev);

 priv = dev->priv;

 pci_free_consistent(pdev,
       sizeof(struct adm8211_desc) * priv->rx_ring_size +
       sizeof(struct adm8211_desc) * priv->tx_ring_size,
       priv->rx_ring, priv->rx_ring_dma);

 kfree(priv->rx_buffers);
 kfree(priv->eeprom);
 pci_iounmap(pdev, priv->map);
 pci_release_regions(pdev);
 pci_disable_device(pdev);
 ieee80211_free_hw(dev);
}
