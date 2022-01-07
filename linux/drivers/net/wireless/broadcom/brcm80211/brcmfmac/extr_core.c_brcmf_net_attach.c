
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; int name; int priv_destructor; int dev_addr; int * ethtool_ops; int needed_headroom; } ;
struct brcmf_pub {int ** iflist; int config; scalar_t__ hdrlen; } ;
struct brcmf_if {size_t bsscfgidx; int ndoffload_work; int multicast_work; int mac_addr; struct net_device* ndev; struct brcmf_pub* drvr; } ;
typedef scalar_t__ s32 ;


 int EBADE ;
 int ETH_ALEN ;
 int INFO ;
 int INIT_WORK (int *,int ) ;
 int TRACE ;
 int _brcmf_set_multicast_list ;
 int _brcmf_update_ndtable ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_cfg80211_free_netdev ;
 int brcmf_dbg (int ,char*,size_t,...) ;
 int brcmf_ethtool_ops ;
 int brcmf_netdev_ops_pri ;
 int cfg_to_wiphy (int ) ;
 int dev_net_set (struct net_device*,int ) ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ register_netdev (struct net_device*) ;
 scalar_t__ register_netdevice (struct net_device*) ;
 int wiphy_net (int ) ;

int brcmf_net_attach(struct brcmf_if *ifp, bool rtnl_locked)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct net_device *ndev;
 s32 err;

 brcmf_dbg(TRACE, "Enter, bsscfgidx=%d mac=%pM\n", ifp->bsscfgidx,
    ifp->mac_addr);
 ndev = ifp->ndev;


 ndev->netdev_ops = &brcmf_netdev_ops_pri;

 ndev->needed_headroom += drvr->hdrlen;
 ndev->ethtool_ops = &brcmf_ethtool_ops;


 memcpy(ndev->dev_addr, ifp->mac_addr, ETH_ALEN);
 dev_net_set(ndev, wiphy_net(cfg_to_wiphy(drvr->config)));

 INIT_WORK(&ifp->multicast_work, _brcmf_set_multicast_list);
 INIT_WORK(&ifp->ndoffload_work, _brcmf_update_ndtable);

 if (rtnl_locked)
  err = register_netdevice(ndev);
 else
  err = register_netdev(ndev);
 if (err != 0) {
  bphy_err(drvr, "couldn't register the net device\n");
  goto fail;
 }

 ndev->priv_destructor = brcmf_cfg80211_free_netdev;
 brcmf_dbg(INFO, "%s: Broadcom Dongle Host Driver\n", ndev->name);
 return 0;

fail:
 drvr->iflist[ifp->bsscfgidx] = ((void*)0);
 ndev->netdev_ops = ((void*)0);
 return -EBADE;
}
