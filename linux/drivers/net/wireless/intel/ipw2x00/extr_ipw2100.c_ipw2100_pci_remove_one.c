
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int kobj; } ;
struct pci_dev {TYPE_1__ dev; } ;
struct net_device {int irq; } ;
struct ipw2100_priv {TYPE_4__* ieee; int ioaddr; int action_mutex; int status; struct net_device* net_dev; } ;
struct TYPE_11__ {scalar_t__ version; } ;
struct TYPE_9__ {int channels; } ;
struct TYPE_8__ {int wiphy; } ;
struct TYPE_10__ {TYPE_3__ bg_band; TYPE_2__ wdev; } ;


 int IPW_DEBUG_INFO (char*) ;
 int STATUS_INITIALIZED ;
 int free_irq (int ,struct ipw2100_priv*) ;
 int free_libipw (struct net_device*,int ) ;
 int ipw2100_attribute_group ;
 int ipw2100_down (struct ipw2100_priv*) ;
 TYPE_5__ ipw2100_firmware ;
 int ipw2100_kill_works (struct ipw2100_priv*) ;
 int ipw2100_queues_free (struct ipw2100_priv*) ;
 int ipw2100_release_firmware (struct ipw2100_priv*,TYPE_5__*) ;
 int ipw2100_snapshot_free (struct ipw2100_priv*) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_disable_device (struct pci_dev*) ;
 struct ipw2100_priv* pci_get_drvdata (struct pci_dev*) ;
 int pci_iounmap (struct pci_dev*,int ) ;
 int pci_release_regions (struct pci_dev*) ;
 int sysfs_remove_group (int *,int *) ;
 int unregister_netdev (struct net_device*) ;
 int wiphy_unregister (int ) ;

__attribute__((used)) static void ipw2100_pci_remove_one(struct pci_dev *pci_dev)
{
 struct ipw2100_priv *priv = pci_get_drvdata(pci_dev);
 struct net_device *dev = priv->net_dev;

 mutex_lock(&priv->action_mutex);

 priv->status &= ~STATUS_INITIALIZED;

 sysfs_remove_group(&pci_dev->dev.kobj, &ipw2100_attribute_group);






 ipw2100_down(priv);



 mutex_unlock(&priv->action_mutex);





 unregister_netdev(dev);

 ipw2100_kill_works(priv);

 ipw2100_queues_free(priv);


 ipw2100_snapshot_free(priv);

 free_irq(dev->irq, priv);

 pci_iounmap(pci_dev, priv->ioaddr);


 wiphy_unregister(priv->ieee->wdev.wiphy);
 kfree(priv->ieee->bg_band.channels);
 free_libipw(dev, 0);

 pci_release_regions(pci_dev);
 pci_disable_device(pci_dev);

 IPW_DEBUG_INFO("exit\n");
}
