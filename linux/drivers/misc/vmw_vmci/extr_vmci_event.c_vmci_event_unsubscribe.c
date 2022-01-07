
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vmci_subscription {int node; } ;


 int VMCI_ERROR_NOT_FOUND ;
 int VMCI_SUCCESS ;
 struct vmci_subscription* event_find (int ) ;
 int kfree (struct vmci_subscription*) ;
 int list_del_rcu (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int subscriber_mutex ;
 int synchronize_rcu () ;

int vmci_event_unsubscribe(u32 sub_id)
{
 struct vmci_subscription *s;

 mutex_lock(&subscriber_mutex);
 s = event_find(sub_id);
 if (s)
  list_del_rcu(&s->node);
 mutex_unlock(&subscriber_mutex);

 if (!s)
  return VMCI_ERROR_NOT_FOUND;

 synchronize_rcu();
 kfree(s);

 return VMCI_SUCCESS;
}
