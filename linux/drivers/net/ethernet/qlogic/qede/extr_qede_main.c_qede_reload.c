
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qede_reload_args {int (* func ) (struct qede_dev*,struct qede_reload_args*) ;} ;
struct qede_dev {scalar_t__ state; int ndev; } ;


 int QEDE_LOAD_RELOAD ;
 scalar_t__ QEDE_STATE_OPEN ;
 int QEDE_UNLOAD_NORMAL ;
 int __qede_lock (struct qede_dev*) ;
 int __qede_unlock (struct qede_dev*) ;
 int qede_config_rx_mode (int ) ;
 int qede_load (struct qede_dev*,int ,int) ;
 int qede_unload (struct qede_dev*,int ,int) ;
 int stub1 (struct qede_dev*,struct qede_reload_args*) ;
 int stub2 (struct qede_dev*,struct qede_reload_args*) ;

void qede_reload(struct qede_dev *edev,
   struct qede_reload_args *args, bool is_locked)
{
 if (!is_locked)
  __qede_lock(edev);





 if (edev->state == QEDE_STATE_OPEN) {
  qede_unload(edev, QEDE_UNLOAD_NORMAL, 1);
  if (args)
   args->func(edev, args);
  qede_load(edev, QEDE_LOAD_RELOAD, 1);


  qede_config_rx_mode(edev->ndev);
 } else if (args) {
  args->func(edev, args);
 }

 if (!is_locked)
  __qede_unlock(edev);
}
