
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ** evt_handler; } ;
struct brcmf_pub {TYPE_1__ fweh; } ;
typedef enum brcmf_fweh_event_code { ____Placeholder_brcmf_fweh_event_code } brcmf_fweh_event_code ;


 int TRACE ;
 int brcmf_dbg (int ,char*,int ) ;
 int brcmf_fweh_event_name (int) ;

void brcmf_fweh_unregister(struct brcmf_pub *drvr,
      enum brcmf_fweh_event_code code)
{
 brcmf_dbg(TRACE, "event handler cleared for %s\n",
    brcmf_fweh_event_name(code));
 drvr->fweh.evt_handler[code] = ((void*)0);
}
