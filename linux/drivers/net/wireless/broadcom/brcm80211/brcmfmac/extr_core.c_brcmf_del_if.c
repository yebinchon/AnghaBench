
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct brcmf_pub {size_t* if2bss; struct brcmf_if** iflist; } ;
struct brcmf_if {int ifidx; TYPE_1__* ndev; int ndoffload_work; int multicast_work; } ;
typedef size_t s32 ;
struct TYPE_4__ {int * netdev_ops; } ;


 size_t BRCMF_BSSIDX_INVALID ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,size_t) ;
 int brcmf_dbg (int ,char*,size_t,int) ;
 int brcmf_net_detach (TYPE_1__*,int) ;
 int brcmf_netdev_ops_pri ;
 int brcmf_netdev_stop (TYPE_1__*) ;
 int brcmf_p2p_ifp_removed (struct brcmf_if*,int) ;
 int cancel_work_sync (int *) ;
 int kfree (struct brcmf_if*) ;
 int netif_stop_queue (TYPE_1__*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static void brcmf_del_if(struct brcmf_pub *drvr, s32 bsscfgidx,
    bool rtnl_locked)
{
 struct brcmf_if *ifp;
 int ifidx;

 ifp = drvr->iflist[bsscfgidx];
 if (!ifp) {
  bphy_err(drvr, "Null interface, bsscfgidx=%d\n", bsscfgidx);
  return;
 }
 brcmf_dbg(TRACE, "Enter, bsscfgidx=%d, ifidx=%d\n", bsscfgidx,
    ifp->ifidx);
 ifidx = ifp->ifidx;

 if (ifp->ndev) {
  if (bsscfgidx == 0) {
   if (ifp->ndev->netdev_ops == &brcmf_netdev_ops_pri) {
    rtnl_lock();
    brcmf_netdev_stop(ifp->ndev);
    rtnl_unlock();
   }
  } else {
   netif_stop_queue(ifp->ndev);
  }

  if (ifp->ndev->netdev_ops == &brcmf_netdev_ops_pri) {
   cancel_work_sync(&ifp->multicast_work);
   cancel_work_sync(&ifp->ndoffload_work);
  }
  brcmf_net_detach(ifp->ndev, rtnl_locked);
 } else {







  brcmf_p2p_ifp_removed(ifp, rtnl_locked);
  kfree(ifp);
 }

 drvr->iflist[bsscfgidx] = ((void*)0);
 if (drvr->if2bss[ifidx] == bsscfgidx)
  drvr->if2bss[ifidx] = BRCMF_BSSIDX_INVALID;
}
