
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct efx_nic {TYPE_1__* mcdi; struct efx_nic* primary; int net_dev; } ;
struct efx_mcdi_iface {char* logging_buffer; int new_epoch; int async_timer; int async_list; int async_lock; int mode; int state; int iface_lock; int proxy_rx_wq; int wq; int logging_enabled; struct efx_nic* efx; } ;
struct TYPE_3__ {int fn_flags; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int MCDI_MODE_POLL ;
 int MCDI_STATE_QUIESCENT ;
 int MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY ;
 scalar_t__ __get_free_page (int ) ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 int efx_mcdi_drv_attach (struct efx_nic*,int,int*) ;
 int efx_mcdi_handle_assertion (struct efx_nic*) ;
 int efx_mcdi_poll_reboot (struct efx_nic*) ;
 int efx_mcdi_timeout_async ;
 int free_page (unsigned long) ;
 int init_waitqueue_head (int *) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mcdi_logging_default ;
 int netif_err (struct efx_nic*,int ,int ,char*) ;
 int probe ;
 int spin_lock_init (int *) ;
 int timer_setup (int *,int ,int ) ;

int efx_mcdi_init(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi;
 bool already_attached;
 int rc = -ENOMEM;

 efx->mcdi = kzalloc(sizeof(*efx->mcdi), GFP_KERNEL);
 if (!efx->mcdi)
  goto fail;

 mcdi = efx_mcdi(efx);
 mcdi->efx = efx;







 init_waitqueue_head(&mcdi->wq);
 init_waitqueue_head(&mcdi->proxy_rx_wq);
 spin_lock_init(&mcdi->iface_lock);
 mcdi->state = MCDI_STATE_QUIESCENT;
 mcdi->mode = MCDI_MODE_POLL;
 spin_lock_init(&mcdi->async_lock);
 INIT_LIST_HEAD(&mcdi->async_list);
 timer_setup(&mcdi->async_timer, efx_mcdi_timeout_async, 0);

 (void) efx_mcdi_poll_reboot(efx);
 mcdi->new_epoch = 1;


 rc = efx_mcdi_handle_assertion(efx);
 if (rc)
  goto fail2;




 rc = efx_mcdi_drv_attach(efx, 1, &already_attached);
 if (rc) {
  netif_err(efx, probe, efx->net_dev,
     "Unable to register driver with MCPU\n");
  goto fail2;
 }
 if (already_attached)

  netif_err(efx, probe, efx->net_dev,
     "Host already registered with MCPU\n");

 if (efx->mcdi->fn_flags &
     (1 << MC_CMD_DRV_ATTACH_EXT_OUT_FLAG_PRIMARY))
  efx->primary = efx;

 return 0;
fail2:




 kfree(efx->mcdi);
 efx->mcdi = ((void*)0);
fail:
 return rc;
}
