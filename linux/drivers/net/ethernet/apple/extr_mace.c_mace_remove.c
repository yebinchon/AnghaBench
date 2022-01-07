
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int irq; } ;
struct macio_dev {int dummy; } ;
struct mace_data {int mace; int tx_dma; int rx_dma; int rx_dma_intr; int tx_dma_intr; } ;


 int BUG_ON (int ) ;
 int free_irq (int ,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int iounmap (int ) ;
 struct net_device* macio_get_drvdata (struct macio_dev*) ;
 int macio_release_resources (struct macio_dev*) ;
 int macio_set_drvdata (struct macio_dev*,int *) ;
 struct mace_data* netdev_priv (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static int mace_remove(struct macio_dev *mdev)
{
 struct net_device *dev = macio_get_drvdata(mdev);
 struct mace_data *mp;

 BUG_ON(dev == ((void*)0));

 macio_set_drvdata(mdev, ((void*)0));

 mp = netdev_priv(dev);

 unregister_netdev(dev);

 free_irq(dev->irq, dev);
 free_irq(mp->tx_dma_intr, dev);
 free_irq(mp->rx_dma_intr, dev);

 iounmap(mp->rx_dma);
 iounmap(mp->tx_dma);
 iounmap(mp->mace);

 free_netdev(dev);

 macio_release_resources(mdev);

 return 0;
}
