
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * notifier_call; } ;
struct ionic {TYPE_2__* master_lif; int dev; TYPE_1__ nb; int nb_work; } ;
struct TYPE_4__ {int registered; int netdev; } ;


 int INIT_WORK (int *,int ) ;
 int dev_err (int ,char*) ;
 int * ionic_lif_notify ;
 int ionic_lif_notify_work ;
 int ionic_link_status_check_request (TYPE_2__*) ;
 int register_netdev (int ) ;
 int register_netdevice_notifier (TYPE_1__*) ;

int ionic_lifs_register(struct ionic *ionic)
{
 int err;

 INIT_WORK(&ionic->nb_work, ionic_lif_notify_work);

 ionic->nb.notifier_call = ionic_lif_notify;

 err = register_netdevice_notifier(&ionic->nb);
 if (err)
  ionic->nb.notifier_call = ((void*)0);


 err = register_netdev(ionic->master_lif->netdev);
 if (err) {
  dev_err(ionic->dev, "Cannot register net device, aborting\n");
  return err;
 }

 ionic_link_status_check_request(ionic->master_lif);
 ionic->master_lif->registered = 1;

 return 0;
}
