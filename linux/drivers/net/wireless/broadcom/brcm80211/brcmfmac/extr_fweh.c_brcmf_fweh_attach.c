
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_fweh_info {int event_q; int evt_q_lock; int event_work; } ;
struct brcmf_pub {struct brcmf_fweh_info fweh; } ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int brcmf_fweh_event_worker ;
 int spin_lock_init (int *) ;

void brcmf_fweh_attach(struct brcmf_pub *drvr)
{
 struct brcmf_fweh_info *fweh = &drvr->fweh;
 INIT_WORK(&fweh->event_work, brcmf_fweh_event_worker);
 spin_lock_init(&fweh->evt_q_lock);
 INIT_LIST_HEAD(&fweh->event_q);
}
