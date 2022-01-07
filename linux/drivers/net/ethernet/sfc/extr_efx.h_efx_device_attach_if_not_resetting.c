
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {scalar_t__ state; int net_dev; int reset_pending; } ;


 scalar_t__ STATE_DISABLED ;
 int netif_device_attach (int ) ;

__attribute__((used)) static inline void efx_device_attach_if_not_resetting(struct efx_nic *efx)
{
 if ((efx->state != STATE_DISABLED) && !efx->reset_pending)
  netif_device_attach(efx->net_dev);
}
