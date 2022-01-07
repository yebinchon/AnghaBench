
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* evt_handler; } ;
struct brcmf_pub {TYPE_1__ fweh; } ;
struct brcmf_if {struct brcmf_pub* drvr; } ;
typedef int s8 ;
typedef int eventmask ;


 int BRCMF_EVENTING_MASK_LEN ;
 int BRCMF_E_IF ;
 int BRCMF_E_LAST ;
 int EVENT ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,...) ;
 int brcmf_fil_iovar_data_set (struct brcmf_if*,char*,int *,int) ;
 int brcmf_fweh_event_name (int) ;
 int memset (int *,int ,int) ;
 int setbit (int *,int) ;

int brcmf_fweh_activate_events(struct brcmf_if *ifp)
{
 struct brcmf_pub *drvr = ifp->drvr;
 int i, err;
 s8 eventmask[BRCMF_EVENTING_MASK_LEN];

 memset(eventmask, 0, sizeof(eventmask));
 for (i = 0; i < BRCMF_E_LAST; i++) {
  if (ifp->drvr->fweh.evt_handler[i]) {
   brcmf_dbg(EVENT, "enable event %s\n",
      brcmf_fweh_event_name(i));
   setbit(eventmask, i);
  }
 }


 brcmf_dbg(EVENT, "enable event IF\n");
 setbit(eventmask, BRCMF_E_IF);

 err = brcmf_fil_iovar_data_set(ifp, "event_msgs",
           eventmask, BRCMF_EVENTING_MASK_LEN);
 if (err)
  bphy_err(drvr, "Set event_msgs error (%d)\n", err);

 return err;
}
