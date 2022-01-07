
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct brcmf_if {size_t bsscfgidx; TYPE_1__* drvr; int ifidx; } ;
struct TYPE_3__ {struct brcmf_if** iflist; } ;


 int TRACE ;
 scalar_t__ WARN_ON (int) ;
 int brcmf_dbg (int ,char*,size_t,int ) ;
 int brcmf_del_if (TYPE_1__*,size_t,int) ;
 int brcmf_proto_del_if (TYPE_1__*,struct brcmf_if*) ;

void brcmf_remove_interface(struct brcmf_if *ifp, bool rtnl_locked)
{
 if (!ifp || WARN_ON(ifp->drvr->iflist[ifp->bsscfgidx] != ifp))
  return;
 brcmf_dbg(TRACE, "Enter, bsscfgidx=%d, ifidx=%d\n", ifp->bsscfgidx,
    ifp->ifidx);
 brcmf_proto_del_if(ifp->drvr, ifp);
 brcmf_del_if(ifp->drvr, ifp->bsscfgidx, rtnl_locked);
}
