
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct TYPE_2__ {struct list_head* next; } ;
struct wil6210_priv {int wmi_ev_lock; TYPE_1__ pending_wmi_ev; } ;
struct list_head {int dummy; } ;


 int list_del (struct list_head*) ;
 int list_empty (TYPE_1__*) ;
 int spin_lock_irqsave (int *,int ) ;
 int spin_unlock_irqrestore (int *,int ) ;

__attribute__((used)) static struct list_head *next_wmi_ev(struct wil6210_priv *wil)
{
 ulong flags;
 struct list_head *ret = ((void*)0);

 spin_lock_irqsave(&wil->wmi_ev_lock, flags);

 if (!list_empty(&wil->pending_wmi_ev)) {
  ret = wil->pending_wmi_ev.next;
  list_del(ret);
 }

 spin_unlock_irqrestore(&wil->wmi_ev_lock, flags);

 return ret;
}
