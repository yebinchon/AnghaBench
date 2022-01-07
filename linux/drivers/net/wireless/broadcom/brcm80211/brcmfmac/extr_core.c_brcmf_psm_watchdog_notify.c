
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int bus_if; } ;
struct brcmf_if {struct brcmf_pub* drvr; int bsscfgidx; } ;
struct brcmf_event_msg {int datalen; } ;


 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,...) ;
 int brcmf_dbg (int ,char*,int ) ;
 int brcmf_debug_create_memdump (int ,void*,int ) ;

__attribute__((used)) static int brcmf_psm_watchdog_notify(struct brcmf_if *ifp,
         const struct brcmf_event_msg *evtmsg,
         void *data)
{
 struct brcmf_pub *drvr = ifp->drvr;
 int err;

 brcmf_dbg(TRACE, "enter: bsscfgidx=%d\n", ifp->bsscfgidx);

 bphy_err(drvr, "PSM's watchdog has fired!\n");

 err = brcmf_debug_create_memdump(ifp->drvr->bus_if, data,
      evtmsg->datalen);
 if (err)
  bphy_err(drvr, "Failed to get memory dump, %d\n", err);

 return err;
}
