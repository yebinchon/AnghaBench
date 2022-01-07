
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct qp_entry {int dummy; } ;
struct qp_broker_entry {int dummy; } ;
struct TYPE_4__ {int mutex; } ;


 int kfree (struct qp_broker_entry*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ qp_broker_list ;
 struct qp_entry* qp_list_get_head (TYPE_1__*) ;
 int qp_list_remove_entry (TYPE_1__*,struct qp_entry*) ;

void vmci_qp_broker_exit(void)
{
 struct qp_entry *entry;
 struct qp_broker_entry *be;

 mutex_lock(&qp_broker_list.mutex);

 while ((entry = qp_list_get_head(&qp_broker_list))) {
  be = (struct qp_broker_entry *)entry;

  qp_list_remove_entry(&qp_broker_list, entry);
  kfree(be);
 }

 mutex_unlock(&qp_broker_list.mutex);
}
