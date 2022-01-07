
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int features; } ;
struct brcmf_pub {struct brcmf_bus* bus_if; } ;
struct brcmf_if {int pend_8021x_cnt; int bsscfgidx; struct brcmf_pub* drvr; } ;
struct brcmf_bus {scalar_t__ state; } ;


 scalar_t__ BRCMF_BUS_UP ;
 int EAGAIN ;
 int EIO ;
 int NETIF_F_IP_CSUM ;
 int TOE_TX_CSUM_OL ;
 int TRACE ;
 int atomic_set (int *,int ) ;
 int bphy_err (struct brcmf_pub*,char*) ;
 scalar_t__ brcmf_cfg80211_up (struct net_device*) ;
 int brcmf_dbg (int ,char*,int ) ;
 scalar_t__ brcmf_fil_iovar_int_get (struct brcmf_if*,char*,int*) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static int brcmf_netdev_open(struct net_device *ndev)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct brcmf_pub *drvr = ifp->drvr;
 struct brcmf_bus *bus_if = drvr->bus_if;
 u32 toe_ol;

 brcmf_dbg(TRACE, "Enter, bsscfgidx=%d\n", ifp->bsscfgidx);


 if (bus_if->state != BRCMF_BUS_UP) {
  bphy_err(drvr, "failed bus is not ready\n");
  return -EAGAIN;
 }

 atomic_set(&ifp->pend_8021x_cnt, 0);


 if (brcmf_fil_iovar_int_get(ifp, "toe_ol", &toe_ol) >= 0
     && (toe_ol & TOE_TX_CSUM_OL) != 0)
  ndev->features |= NETIF_F_IP_CSUM;
 else
  ndev->features &= ~NETIF_F_IP_CSUM;

 if (brcmf_cfg80211_up(ndev)) {
  bphy_err(drvr, "failed to bring up cfg80211\n");
  return -EIO;
 }


 netif_carrier_off(ndev);
 return 0;
}
