
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * notifier_call; } ;
struct ionic {TYPE_2__* master_lif; TYPE_3__ nb; int nb_work; } ;
struct TYPE_8__ {scalar_t__ reg_state; } ;
struct TYPE_5__ {int work; } ;
struct TYPE_6__ {TYPE_4__* netdev; int tx_timeout_work; TYPE_1__ deferred; } ;


 scalar_t__ NETREG_REGISTERED ;
 int cancel_work_sync (int *) ;
 int unregister_netdev (TYPE_4__*) ;
 int unregister_netdevice_notifier (TYPE_3__*) ;

void ionic_lifs_unregister(struct ionic *ionic)
{
 if (ionic->nb.notifier_call) {
  unregister_netdevice_notifier(&ionic->nb);
  cancel_work_sync(&ionic->nb_work);
  ionic->nb.notifier_call = ((void*)0);
 }





 cancel_work_sync(&ionic->master_lif->deferred.work);
 cancel_work_sync(&ionic->master_lif->tx_timeout_work);
 if (ionic->master_lif->netdev->reg_state == NETREG_REGISTERED)
  unregister_netdev(ionic->master_lif->netdev);
}
