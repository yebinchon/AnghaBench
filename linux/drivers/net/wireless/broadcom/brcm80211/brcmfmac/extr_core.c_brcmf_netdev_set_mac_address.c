
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int dummy; } ;
struct brcmf_pub {int dummy; } ;
struct brcmf_if {int mac_addr; TYPE_1__* ndev; int bsscfgidx; struct brcmf_pub* drvr; } ;
struct TYPE_2__ {int dev_addr; } ;


 int ETH_ALEN ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,int ) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,int ,int ) ;
 int memcpy (int ,int ,int ) ;
 struct brcmf_if* netdev_priv (struct net_device*) ;

__attribute__((used)) static int brcmf_netdev_set_mac_address(struct net_device *ndev, void *addr)
{
 struct brcmf_if *ifp = netdev_priv(ndev);
 struct sockaddr *sa = (struct sockaddr *)addr;
 struct brcmf_pub *drvr = ifp->drvr;
 int err;

 brcmf_dbg(TRACE, "Enter, bsscfgidx=%d\n", ifp->bsscfgidx);

 err = brcmf_fil_iovar_data_set(ifp, "cur_etheraddr", sa->sa_data,
           ETH_ALEN);
 if (err < 0) {
  bphy_err(drvr, "Setting cur_etheraddr failed, %d\n", err);
 } else {
  brcmf_dbg(TRACE, "updated to %pM\n", sa->sa_data);
  memcpy(ifp->mac_addr, sa->sa_data, ETH_ALEN);
  memcpy(ifp->ndev->dev_addr, ifp->mac_addr, ETH_ALEN);
 }
 return err;
}
