
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int * netdev_ops; int name; int dev_addr; } ;
struct brcmf_pub {int ** iflist; } ;
struct brcmf_if {size_t bsscfgidx; struct brcmf_pub* drvr; int mac_addr; struct net_device* ndev; } ;


 int EBADE ;
 int ETH_ALEN ;
 int INFO ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_dbg (int ,char*,size_t,...) ;
 int brcmf_netdev_ops_p2p ;
 int memcpy (int ,int ,int ) ;
 scalar_t__ register_netdev (struct net_device*) ;

__attribute__((used)) static int brcmf_net_p2p_attach(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 struct net_device *ndev;

 brcmf_dbg(TRACE, "Enter, bsscfgidx=%d mac=%pM\n", ifp->bsscfgidx,
    ifp->mac_addr);
 ndev = ifp->ndev;

 ndev->netdev_ops = &brcmf_netdev_ops_p2p;


 memcpy(ndev->dev_addr, ifp->mac_addr, ETH_ALEN);

 if (register_netdev(ndev) != 0) {
  bphy_err(drvr, "couldn't register the p2p net device\n");
  goto fail;
 }

 brcmf_dbg(INFO, "%s: Broadcom Dongle Host Driver\n", ndev->name);

 return 0;

fail:
 ifp->drvr->iflist[ifp->bsscfgidx] = ((void*)0);
 ndev->netdev_ops = ((void*)0);
 return -EBADE;
}
