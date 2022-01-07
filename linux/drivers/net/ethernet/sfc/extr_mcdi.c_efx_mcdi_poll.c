
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct efx_nic {int dummy; } ;
struct efx_mcdi_iface {int resprc; int iface_lock; scalar_t__ resp_data_len; scalar_t__ resp_hdr_len; } ;


 int ETIMEDOUT ;
 unsigned long MCDI_RPC_TIMEOUT ;
 unsigned int USER_TICK_USEC ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 scalar_t__ efx_mcdi_poll_once (struct efx_nic*) ;
 int efx_mcdi_poll_reboot (struct efx_nic*) ;
 unsigned long jiffies ;
 int schedule_timeout_uninterruptible (int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int udelay (int) ;

__attribute__((used)) static int efx_mcdi_poll(struct efx_nic *efx)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);
 unsigned long time, finish;
 unsigned int spins;
 int rc;


 rc = efx_mcdi_poll_reboot(efx);
 if (rc) {
  spin_lock_bh(&mcdi->iface_lock);
  mcdi->resprc = rc;
  mcdi->resp_hdr_len = 0;
  mcdi->resp_data_len = 0;
  spin_unlock_bh(&mcdi->iface_lock);
  return 0;
 }





 spins = USER_TICK_USEC;
 finish = jiffies + MCDI_RPC_TIMEOUT;

 while (1) {
  if (spins != 0) {
   --spins;
   udelay(1);
  } else {
   schedule_timeout_uninterruptible(1);
  }

  time = jiffies;

  if (efx_mcdi_poll_once(efx))
   break;

  if (time_after(time, finish))
   return -ETIMEDOUT;
 }


 return 0;
}
