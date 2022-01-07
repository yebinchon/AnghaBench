
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct list_head* next; } ;
struct wil6210_vif {int probe_client_mutex; TYPE_1__ probe_client_pending; } ;
struct list_head {int dummy; } ;


 int list_del (struct list_head*) ;
 int list_empty (TYPE_1__*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct list_head *next_probe_client(struct wil6210_vif *vif)
{
 struct list_head *ret = ((void*)0);

 mutex_lock(&vif->probe_client_mutex);

 if (!list_empty(&vif->probe_client_pending)) {
  ret = vif->probe_client_pending.next;
  list_del(ret);
 }

 mutex_unlock(&vif->probe_client_mutex);

 return ret;
}
