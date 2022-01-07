
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_fweh_info {int evt_handler; int event_q; int event_work; } ;
struct brcmf_pub {struct brcmf_fweh_info fweh; } ;


 int WARN_ON (int) ;
 int cancel_work_sync (int *) ;
 int list_empty (int *) ;
 int memset (int ,int ,int) ;

void brcmf_fweh_detach(struct brcmf_pub *drvr)
{
 struct brcmf_fweh_info *fweh = &drvr->fweh;


 cancel_work_sync(&fweh->event_work);
 WARN_ON(!list_empty(&fweh->event_q));
 memset(fweh->evt_handler, 0, sizeof(fweh->evt_handler));
}
