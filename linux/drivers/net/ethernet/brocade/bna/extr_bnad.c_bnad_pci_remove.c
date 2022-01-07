
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int hb_timer; int sem_timer; int ioc_timer; } ;
struct TYPE_4__ {TYPE_1__ ioc; } ;
struct bna {TYPE_2__ ioceth; } ;
struct bnad {int regdata; int conf_mutex; int * res_info; int * mod_res_info; int bna_lock; struct bna bna; int run_flags; } ;


 int BNAD_RF_NETDEV_REGISTERED ;
 int BNA_MOD_RES_T_MAX ;
 int BNA_RES_T_MAX ;
 int bna_uninit (struct bna*) ;
 int bnad_debugfs_uninit (struct bnad*) ;
 int bnad_disable_msix (struct bnad*) ;
 int bnad_ioceth_disable (struct bnad*) ;
 int bnad_lock_uninit (struct bnad*) ;
 int bnad_mbox_irq_free (struct bnad*) ;
 int bnad_pci_uninit (struct pci_dev*) ;
 int bnad_res_free (struct bnad*,int *,int ) ;
 int bnad_uninit (struct bnad*) ;
 int del_timer_sync (int *) ;
 int free_netdev (struct net_device*) ;
 int kfree (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct bnad* netdev_priv (struct net_device*) ;
 struct net_device* pci_get_drvdata (struct pci_dev*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void
bnad_pci_remove(struct pci_dev *pdev)
{
 struct net_device *netdev = pci_get_drvdata(pdev);
 struct bnad *bnad;
 struct bna *bna;
 unsigned long flags;

 if (!netdev)
  return;

 bnad = netdev_priv(netdev);
 bna = &bnad->bna;

 if (test_and_clear_bit(BNAD_RF_NETDEV_REGISTERED, &bnad->run_flags))
  unregister_netdev(netdev);

 mutex_lock(&bnad->conf_mutex);
 bnad_ioceth_disable(bnad);
 del_timer_sync(&bnad->bna.ioceth.ioc.ioc_timer);
 del_timer_sync(&bnad->bna.ioceth.ioc.sem_timer);
 del_timer_sync(&bnad->bna.ioceth.ioc.hb_timer);
 spin_lock_irqsave(&bnad->bna_lock, flags);
 bna_uninit(bna);
 spin_unlock_irqrestore(&bnad->bna_lock, flags);

 bnad_res_free(bnad, &bnad->mod_res_info[0], BNA_MOD_RES_T_MAX);
 bnad_res_free(bnad, &bnad->res_info[0], BNA_RES_T_MAX);
 bnad_mbox_irq_free(bnad);
 bnad_disable_msix(bnad);
 bnad_pci_uninit(pdev);
 mutex_unlock(&bnad->conf_mutex);
 bnad_lock_uninit(bnad);

 kfree(bnad->regdata);
 bnad_debugfs_uninit(bnad);
 bnad_uninit(bnad);
 free_netdev(netdev);
}
