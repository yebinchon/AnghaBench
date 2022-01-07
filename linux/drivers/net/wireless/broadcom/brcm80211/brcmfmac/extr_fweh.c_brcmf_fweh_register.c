
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* evt_handler; } ;
struct brcmf_pub {TYPE_1__ fweh; } ;
typedef enum brcmf_fweh_event_code { ____Placeholder_brcmf_fweh_event_code } brcmf_fweh_event_code ;
typedef scalar_t__ brcmf_fweh_handler_t ;


 int ENOSPC ;
 int TRACE ;
 int bphy_err (struct brcmf_pub*,char*,int) ;
 int brcmf_dbg (int ,char*,int ) ;
 int brcmf_fweh_event_name (int) ;

int brcmf_fweh_register(struct brcmf_pub *drvr, enum brcmf_fweh_event_code code,
   brcmf_fweh_handler_t handler)
{
 if (drvr->fweh.evt_handler[code]) {
  bphy_err(drvr, "event code %d already registered\n", code);
  return -ENOSPC;
 }
 drvr->fweh.evt_handler[code] = handler;
 brcmf_dbg(TRACE, "event handler registered for %s\n",
    brcmf_fweh_event_name(code));
 return 0;
}
