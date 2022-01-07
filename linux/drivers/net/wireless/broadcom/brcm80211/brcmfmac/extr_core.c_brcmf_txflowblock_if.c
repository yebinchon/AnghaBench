
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_if {int netif_stop; int netif_stop_lock; int ndev; int bsscfgidx; } ;
typedef enum brcmf_netif_stop_reason { ____Placeholder_brcmf_netif_stop_reason } brcmf_netif_stop_reason ;


 int TRACE ;
 int brcmf_dbg (int ,char*,int ,int,int,int) ;
 int netif_stop_queue (int ) ;
 int netif_wake_queue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void brcmf_txflowblock_if(struct brcmf_if *ifp,
     enum brcmf_netif_stop_reason reason, bool state)
{
 unsigned long flags;

 if (!ifp || !ifp->ndev)
  return;

 brcmf_dbg(TRACE, "enter: bsscfgidx=%d stop=0x%X reason=%d state=%d\n",
    ifp->bsscfgidx, ifp->netif_stop, reason, state);

 spin_lock_irqsave(&ifp->netif_stop_lock, flags);
 if (state) {
  if (!ifp->netif_stop)
   netif_stop_queue(ifp->ndev);
  ifp->netif_stop |= reason;
 } else {
  ifp->netif_stop &= ~reason;
  if (!ifp->netif_stop)
   netif_wake_queue(ifp->ndev);
 }
 spin_unlock_irqrestore(&ifp->netif_stop_lock, flags);
}
