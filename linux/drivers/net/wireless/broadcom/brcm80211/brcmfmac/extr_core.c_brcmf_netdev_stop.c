
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct brcmf_if {TYPE_2__* drvr; int bsscfgidx; } ;
struct TYPE_4__ {TYPE_1__* bus_if; } ;
struct TYPE_3__ {scalar_t__ state; } ;


 scalar_t__ BRCMF_BUS_UP ;
 int TRACE ;
 int brcmf_cfg80211_down (struct net_device*) ;
 int brcmf_dbg (int ,char*,int ) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,int *,int ) ;
 int brcmf_net_setcarrier (struct brcmf_if*,int) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static int brcmf_netdev_stop(struct net_device *ndev)
{
 struct brcmf_if *ifp = netdev_priv(ndev);

 brcmf_dbg(TRACE, "Enter, bsscfgidx=%d\n", ifp->bsscfgidx);

 brcmf_cfg80211_down(ndev);

 if (ifp->drvr->bus_if->state == BRCMF_BUS_UP)
  brcmf_fil_iovar_data_set(ifp, "arp_hostip_clear", ((void*)0), 0);

 brcmf_net_setcarrier(ifp, 0);

 return 0;
}
