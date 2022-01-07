
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aq_nic_s {int ndev; } ;


 int aq_nic_deinit (struct aq_nic_s*) ;
 int aq_nic_stop (struct aq_nic_s*) ;
 int netif_device_detach (int ) ;
 scalar_t__ netif_running (int ) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

void aq_nic_shutdown(struct aq_nic_s *self)
{
 int err = 0;

 if (!self->ndev)
  return;

 rtnl_lock();

 netif_device_detach(self->ndev);

 if (netif_running(self->ndev)) {
  err = aq_nic_stop(self);
  if (err < 0)
   goto err_exit;
 }
 aq_nic_deinit(self);

err_exit:
 rtnl_unlock();
}
