
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int dummy; } ;
struct brcmf_if {int pend_8021x_wait; struct brcmf_pub* drvr; } ;


 int MAX_WAIT_FOR_8021X_TX ;
 int bphy_err (struct brcmf_pub*,char*) ;
 int brcmf_get_pend_8021x_cnt (struct brcmf_if*) ;
 int wait_event_timeout (int ,int,int ) ;

int brcmf_netdev_wait_pend8021x(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 int err;

 err = wait_event_timeout(ifp->pend_8021x_wait,
     !brcmf_get_pend_8021x_cnt(ifp),
     MAX_WAIT_FOR_8021X_TX);

 if (!err)
  bphy_err(drvr, "Timed out waiting for no pending 802.1x packets\n");

 return !err;
}
