
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_device {int dummy; } ;
struct adf7242_local {int hw; int bmux; int wqueue; int work; int debugfs_root; } ;


 int cancel_delayed_work_sync (int *) ;
 int debugfs_remove_recursive (int ) ;
 int destroy_workqueue (int ) ;
 int ieee802154_free_hw (int ) ;
 int ieee802154_unregister_hw (int ) ;
 int mutex_destroy (int *) ;
 struct adf7242_local* spi_get_drvdata (struct spi_device*) ;

__attribute__((used)) static int adf7242_remove(struct spi_device *spi)
{
 struct adf7242_local *lp = spi_get_drvdata(spi);

 debugfs_remove_recursive(lp->debugfs_root);

 cancel_delayed_work_sync(&lp->work);
 destroy_workqueue(lp->wqueue);

 ieee802154_unregister_hw(lp->hw);
 mutex_destroy(&lp->bmux);
 ieee802154_free_hw(lp->hw);

 return 0;
}
