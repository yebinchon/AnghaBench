
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct v4l2_subscribed_event {int in_use; int elems; int first; struct v4l2_kevent* events; TYPE_1__* ops; } ;
struct TYPE_6__ {scalar_t__ sequence; int id; int u; int type; } ;
struct v4l2_kevent {int list; TYPE_2__ event; int ts; } ;
struct v4l2_fh {int wait; int navailable; int available; scalar_t__ sequence; } ;
struct v4l2_event {int id; int u; int type; } ;
struct TYPE_5__ {int (* merge ) (TYPE_2__*,TYPE_2__*) ;int (* replace ) (TYPE_2__*,struct v4l2_event const*) ;} ;


 int list_add_tail (int *,int *) ;
 int list_del (int *) ;
 int sev_pos (struct v4l2_subscribed_event*,int) ;
 int stub1 (TYPE_2__*,struct v4l2_event const*) ;
 int stub2 (TYPE_2__*,TYPE_2__*) ;
 struct v4l2_subscribed_event* v4l2_event_subscribed (struct v4l2_fh*,int ,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void __v4l2_event_queue_fh(struct v4l2_fh *fh,
      const struct v4l2_event *ev, u64 ts)
{
 struct v4l2_subscribed_event *sev;
 struct v4l2_kevent *kev;
 bool copy_payload = 1;


 sev = v4l2_event_subscribed(fh, ev->type, ev->id);
 if (sev == ((void*)0))
  return;


 fh->sequence++;


 if (sev->in_use == sev->elems) {

  kev = sev->events + sev_pos(sev, 0);
  list_del(&kev->list);
  sev->in_use--;
  sev->first = sev_pos(sev, 1);
  fh->navailable--;
  if (sev->elems == 1) {
   if (sev->ops && sev->ops->replace) {
    sev->ops->replace(&kev->event, ev);
    copy_payload = 0;
   }
  } else if (sev->ops && sev->ops->merge) {
   struct v4l2_kevent *second_oldest =
    sev->events + sev_pos(sev, 0);
   sev->ops->merge(&kev->event, &second_oldest->event);
  }
 }


 kev = sev->events + sev_pos(sev, sev->in_use);
 kev->event.type = ev->type;
 if (copy_payload)
  kev->event.u = ev->u;
 kev->event.id = ev->id;
 kev->ts = ts;
 kev->event.sequence = fh->sequence;
 sev->in_use++;
 list_add_tail(&kev->list, &fh->available);

 fh->navailable++;

 wake_up_all(&fh->wait);
}
