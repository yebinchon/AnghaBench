
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efx_nic {scalar_t__ mc_bist_for_other_fn; } ;
struct TYPE_2__ {int * next; } ;
struct efx_mcdi_iface {scalar_t__ mode; int async_lock; int async_timer; TYPE_1__ async_list; } ;
struct efx_mcdi_async_param {unsigned int cmd; size_t inlen; size_t outlen; int quiet; unsigned long cookie; int list; int * complete; } ;
typedef int efx_mcdi_async_completer ;
typedef int efx_dword_t ;


 scalar_t__ ALIGN (int ,int) ;
 int ENETDOWN ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 scalar_t__ MCDI_MODE_EVENTS ;
 scalar_t__ MCDI_RPC_TIMEOUT ;
 struct efx_mcdi_iface* efx_mcdi (struct efx_nic*) ;
 scalar_t__ efx_mcdi_acquire_async (struct efx_mcdi_iface*) ;
 int efx_mcdi_check_supported (struct efx_nic*,unsigned int,size_t) ;
 int efx_mcdi_send_request (struct efx_nic*,unsigned int,int const*,size_t) ;
 scalar_t__ jiffies ;
 int kfree (struct efx_mcdi_async_param*) ;
 struct efx_mcdi_async_param* kmalloc (scalar_t__,int ) ;
 int list_add_tail (int *,TYPE_1__*) ;
 int max (size_t,size_t) ;
 int memcpy (struct efx_mcdi_async_param*,int const*,size_t) ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int _efx_mcdi_rpc_async(struct efx_nic *efx, unsigned int cmd,
          const efx_dword_t *inbuf, size_t inlen,
          size_t outlen,
          efx_mcdi_async_completer *complete,
          unsigned long cookie, bool quiet)
{
 struct efx_mcdi_iface *mcdi = efx_mcdi(efx);
 struct efx_mcdi_async_param *async;
 int rc;

 rc = efx_mcdi_check_supported(efx, cmd, inlen);
 if (rc)
  return rc;

 if (efx->mc_bist_for_other_fn)
  return -ENETDOWN;

 async = kmalloc(sizeof(*async) + ALIGN(max(inlen, outlen), 4),
   GFP_ATOMIC);
 if (!async)
  return -ENOMEM;

 async->cmd = cmd;
 async->inlen = inlen;
 async->outlen = outlen;
 async->quiet = quiet;
 async->complete = complete;
 async->cookie = cookie;
 memcpy(async + 1, inbuf, inlen);

 spin_lock_bh(&mcdi->async_lock);

 if (mcdi->mode == MCDI_MODE_EVENTS) {
  list_add_tail(&async->list, &mcdi->async_list);




  if (mcdi->async_list.next == &async->list &&
      efx_mcdi_acquire_async(mcdi)) {
   efx_mcdi_send_request(efx, cmd, inbuf, inlen);
   mod_timer(&mcdi->async_timer,
      jiffies + MCDI_RPC_TIMEOUT);
  }
 } else {
  kfree(async);
  rc = -ENETDOWN;
 }

 spin_unlock_bh(&mcdi->async_lock);

 return rc;
}
