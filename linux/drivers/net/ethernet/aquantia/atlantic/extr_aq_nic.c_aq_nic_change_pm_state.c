
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct aq_nic_s {int ndev; int power_state; } ;
struct TYPE_3__ {int event; } ;
typedef TYPE_1__ pm_message_t ;


 int AQ_HW_POWER_STATE_D3 ;
 int PM_EVENT_FREEZE ;
 int PM_EVENT_SLEEP ;
 int aq_nic_deinit (struct aq_nic_s*) ;
 int aq_nic_init (struct aq_nic_s*) ;
 int aq_nic_start (struct aq_nic_s*) ;
 int aq_nic_stop (struct aq_nic_s*) ;
 int netif_device_attach (int ) ;
 int netif_device_detach (int ) ;
 int netif_running (int ) ;
 int netif_tx_start_all_queues (int ) ;
 int netif_tx_stop_all_queues (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

int aq_nic_change_pm_state(struct aq_nic_s *self, pm_message_t *pm_msg)
{
 int err = 0;

 if (!netif_running(self->ndev)) {
  err = 0;
  goto out;
 }
 rtnl_lock();
 if (pm_msg->event & PM_EVENT_SLEEP || pm_msg->event & PM_EVENT_FREEZE) {
  self->power_state = AQ_HW_POWER_STATE_D3;
  netif_device_detach(self->ndev);
  netif_tx_stop_all_queues(self->ndev);

  err = aq_nic_stop(self);
  if (err < 0)
   goto err_exit;

  aq_nic_deinit(self);
 } else {
  err = aq_nic_init(self);
  if (err < 0)
   goto err_exit;

  err = aq_nic_start(self);
  if (err < 0)
   goto err_exit;

  netif_device_attach(self->ndev);
  netif_tx_start_all_queues(self->ndev);
 }

err_exit:
 rtnl_unlock();
out:
 return err;
}
