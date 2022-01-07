
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct brcmf_if {struct net_device* ndev; int bsscfgidx; } ;


 int BRCMF_NETIF_STOP_REASON_DISCONNECTED ;
 int TRACE ;
 int brcmf_dbg (int ,char*,int ,int) ;
 int brcmf_txflowblock_if (struct brcmf_if*,int ,int) ;
 int netif_carrier_off (struct net_device*) ;
 scalar_t__ netif_carrier_ok (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

void brcmf_net_setcarrier(struct brcmf_if *ifp, bool on)
{
 struct net_device *ndev;

 brcmf_dbg(TRACE, "Enter, bsscfgidx=%d carrier=%d\n", ifp->bsscfgidx,
    on);

 ndev = ifp->ndev;
 brcmf_txflowblock_if(ifp, BRCMF_NETIF_STOP_REASON_DISCONNECTED, !on);
 if (on) {
  if (!netif_carrier_ok(ndev))
   netif_carrier_on(ndev);

 } else {
  if (netif_carrier_ok(ndev))
   netif_carrier_off(ndev);
 }
}
