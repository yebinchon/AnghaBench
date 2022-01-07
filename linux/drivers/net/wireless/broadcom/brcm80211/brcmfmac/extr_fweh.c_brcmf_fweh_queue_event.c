
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ulong ;
struct brcmf_fweh_queue_item {int q; } ;
struct brcmf_fweh_info {int event_work; int evt_q_lock; int event_q; } ;


 int list_add_tail (int *,int *) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static void brcmf_fweh_queue_event(struct brcmf_fweh_info *fweh,
       struct brcmf_fweh_queue_item *event)
{
 ulong flags;

 spin_lock_irqsave(&fweh->evt_q_lock, flags);
 list_add_tail(&event->q, &fweh->event_q);
 spin_unlock_irqrestore(&fweh->evt_q_lock, flags);
 schedule_work(&fweh->event_work);
}
